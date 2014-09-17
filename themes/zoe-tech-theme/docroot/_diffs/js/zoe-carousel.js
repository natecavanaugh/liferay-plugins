AUI().add(
  'zoe-carousel',
  function(A) {
    var Lang = A.Lang,

        getCN = A.getClassName,

        CSS_ITEM = getCN('carousel', 'item'),
        CSS_ITEM_ACTIVE = getCN('carousel', 'item', 'active'),
        CSS_ITEM_TRANSITION = getCN('carousel', 'item', 'transition'),
        CSS_MENU_ACTIVE = getCN('carousel', 'menu', 'active'),
        CSS_MENU_INDEX = getCN('carousel', 'menu', 'index'),
        CSS_MENU_ITEM = getCN('carousel', 'menu', 'item'),
        CSS_MENU_NEXT = getCN('carousel', 'menu', 'next'),
        CSS_MENU_PAUSE = getCN('carousel', 'menu', 'pause'),
        CSS_MENU_PLAY = getCN('carousel', 'menu', 'play'),
        CSS_MENU_PREV = getCN('carousel', 'menu', 'prev'),
        CSS_MENU_ITEM_DEFAULT = [CSS_MENU_ITEM, CSS_MENU_INDEX].join(' '),
        CSS_MENU_ITEM_ACTIVE = [CSS_MENU_ITEM, CSS_MENU_INDEX, CSS_MENU_ACTIVE].join(' '),

        NAME = 'zoe-carousel',

        SELECTOR_MENU_INDEX = '.carousel-menu-index',
        SELECTOR_MENU_NEXT = '.carousel-menu-next',
        SELECTOR_MENU_PAUSE = '.carousel-menu-pause',
        SELECTOR_MENU_PLAY = '.carousel-menu-play',
        SELECTOR_MENU_PLAY_OR_PAUSE = [SELECTOR_MENU_PLAY, SELECTOR_MENU_PAUSE].join(),
        SELECTOR_MENU_PREV = '.carousel-menu-prev',

        TPL_ITEM = '<li><a class="carousel-menu-item {cssClasses}" href="">{index}</a></li>',

        TPL_MENU = '<menu>' +
          '<li><a class="carousel-menu-item carousel-menu-play" href=""></a></li>' +
          '<li><a class="carousel-menu-item carousel-menu-prev" href=""></a></li>' +
          '{items}' +
          '<li><a class="carousel-menu-item carousel-menu-next" href=""></a></li>' +
          '</menu>',

        UI_SRC = A.Widget.UI_SRC;

    var ZoeCarousel = A.Component.create(
      {
        ATTRS: {
          playing: {
            value: false
          },

          transitionType: {
            value: 'press-away'
          }
        },

        EXTENDS: A.Carousel,

        NAME: NAME,

        prototype: {
          initializer: function() {
            var instance = this;

            instance.transitionType = instance.get('transitionType');
          },

          _handleSlideInOrig: function(object, transitionConfig) {
            object.transition(transitionConfig);
          },

          _handleSlideOutOrig: function(object, transitionConfig) {
            object.transition(transitionConfig);
          },

          _transitionIn: function(object) {
            var instance = this;

            var transitionConfig = {
              easing: 'cubic-bezier(0.7, 0, 0.3, 1)'
            };

            switch (instance.transitionType) {
              case 'press-away':
              case 'slide':
                if (instance.buttonClicked === 'prev') {
                  transitionConfig.left = '0';
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '100%',
                        opacity: '1'
                      });
                    },
                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: ''
                      });
                    }
                  };
                }
                else {
                  transitionConfig.left = '0';
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '-100%',
                        opacity: '1'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: ''
                      });
                    }
                  };
                }

                instance._handleSlideInOrig(object, transitionConfig);
                break;
              case 'snapin':
                if (instance.buttonClicked === 'prev') {
                  transitionConfig.left = {
                    delay: 0.25,
                    duration: 0.3,
                    value: '0'
                  };
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '-100%',
                        opacity: '1'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: ''
                      });
                    }
                  };
                }
                else {
                  transitionConfig.left = {
                    delay: 0.25,
                    duration: 0.3,
                    value: '0'
                  };
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '100%',
                        opacity: '1'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: ''
                      });
                    }
                  };
                }

                instance._handleSlideInOrig(object, transitionConfig);
                break;
              case 'soft-scale':
                if (instance.buttonClicked === 'prev') {
                  transitionConfig.duration = 1;
                  transitionConfig.opacity = '1';
                  transitionConfig.transform = 'scale(1)';

                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        opacity: '0',
                        transform: 'scale(1.1)'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        opacity: '',
                        transform: ''
                      });
                    }
                  }
                }
                else {
                  transitionConfig.duration = 1;
                  transitionConfig.opacity = '1';
                  transitionConfig.transform = 'scale(1)';

                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        opacity: '0',
                        transform: 'scale(0.9)'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        opacity: '',
                        transform: ''
                      });
                    }
                  }
                }

                instance._handleSlideInOrig(object, transitionConfig);
                break;
              default:
                transitionConfig.opacity = '1';
                transitionConfig.on = {
                  start: function() {
                      this.setStyles({
                        opacity: '0'
                      });
                  },

                  end: function() {
                    this.setStyles({
                      opacity: ''
                    });
                  }
                };

                instance._handleSlideInOrig(object, transitionConfig);
                break;
            }
          },

          _transitionOut: function(object) {
            var instance = this;

            var transitionConfig = {
              easing: 'cubic-bezier(0.7, 0, 0.3, 1)'
            };

            switch (instance.transitionType) {
              case 'press-away':
                if (instance.buttonClicked === 'prev') {
                  transitionConfig.left = '-100%';
                  transitionConfig.opacity = '0';
                  transitionConfig.transform = 'scale(0.9)';
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '0',
                        opacity: '1'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: '',
                        transform: ''
                      });
                    }
                  };
                }
                else {
                  transitionConfig.left = '100%';
                  transitionConfig.opacity = '0';
                  transitionConfig.transform = 'scale(0.9)';
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '0',
                        opacity: '1'
                      });
                    },
                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: '',
                        transform: ''
                      });
                    }
                  };
                }

                instance._handleSlideOutOrig(object, transitionConfig);
                break;
              case 'slide':
                if (instance.buttonClicked === 'prev') {
                  transitionConfig.left = '-100%';
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '0',
                        opacity: '1'
                      });
                    },
                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: ''
                      });
                    }
                  };
                }
                else {
                  transitionConfig.left = '100%';
                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        left: '0',
                        opacity: '1'
                      });
                    },
                    end: function() {
                      this.setStyles({
                        left: '',
                        opacity: ''
                      });
                    }
                  };
                }

                instance._handleSlideOutOrig(object, transitionConfig);
                break;
              case 'snapin':
                if (instance.buttonClicked === 'prev') {
                  object.transition({
                    left: '50px',
                    opacity: '0',
                    on: {
                      start: function() {
                        this.setStyles({
                          left: '0',
                          opacity: '1'
                        });
                      },

                      end: function() {
                        this.setStyles({
                          left: '',
                          opacity: ''
                        });
                      }
                    }
                  });
                }
                else {
                  object.transition({
                    left: '-50px',
                    opacity: '0',
                    on: {
                      start: function() {
                        this.setStyles({
                          left: '0',
                          opacity: '1'
                        });
                      },

                      end: function() {
                        this.setStyles({
                          left: '',
                          opacity: ''
                        });
                      }
                    }
                  });
                }
                break;
              case 'soft-scale':
                if (instance.buttonClicked === 'prev') {
                  transitionConfig.opacity = '0';
                  transitionConfig.transform = 'scale(0.9)';

                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        opacity: '1',
                        transform: 'scale(1)'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        opacity: '',
                        transform: ''
                      });
                    }
                  }
                }
                else {
                  transitionConfig.opacity = '0';
                  transitionConfig.transform = 'scale(1.1)';

                  transitionConfig.on = {
                    start: function() {
                      this.setStyles({
                        opacity: '1',
                        transform: 'scale(1)'
                      });
                    },

                    end: function() {
                      this.setStyles({
                        opacity: '',
                        transform: ''
                      });
                    }
                  }
                }

                instance._handleSlideOutOrig(object, transitionConfig);
                break;
              default:
                transitionConfig.opacity = '0';
                transitionConfig.on = {
                  start: function() {
                    this.setStyles({
                      opacity: '1'
                    });
                  },
                  end: function() {
                    this.setStyles({
                      opacity: ''
                    });
                  }
                };

                instance._handleSlideOutOrig(object, transitionConfig);
                break;
            }
          },

          _onAnimationStart: function(animate, newImage, oldImage, newMenuItem, oldMenuItem, prevVal, newVal) {
            var instance = this;

            if (prevVal > newVal && instance.buttonClicked === 'index') {
              instance.buttonClicked = 'prev'
            }

            instance._transitionIn(newImage);
            instance._transitionOut(oldImage);

            instance.buttonClicked = null;

            if (newMenuItem) {
              newMenuItem.addClass(CSS_MENU_ACTIVE);
            }

            if (oldImage) {
              oldImage.replaceClass(CSS_ITEM_ACTIVE, CSS_ITEM_TRANSITION);
            }

            if (oldMenuItem) {
              oldMenuItem.removeClass(CSS_MENU_ACTIVE);
            }

            newImage.addClass(CSS_ITEM_ACTIVE);
          },

          _onClickDelegate: function(event) {
            var instance = this;

            event.preventDefault();

            var currentTarget = event.currentTarget;

            var handler;

            if (currentTarget.hasClass(CSS_MENU_INDEX)) {
              instance.buttonClicked = 'index';
              handler = instance._onMenuItemClick;
            }
            else if (currentTarget.hasClass(CSS_MENU_PREV)) {
              instance.buttonClicked = 'prev';
              handler = instance._updateIndexPrev;
            }
            else if (currentTarget.hasClass(CSS_MENU_NEXT)) {
              instance.buttonClicked = 'next';
              handler = instance._updateIndexNext;
            }
            else if (currentTarget.test(SELECTOR_MENU_PLAY_OR_PAUSE)) {
              handler = instance._onMenuPlayClick;
            }

            if (handler) {
              handler.apply(instance, arguments);
            }
          },

          _renderMenu: function() {
              var instance = this,
                  activeIndex = instance.get('activeIndex'),
                  items = [],
                  i,
                  len = instance.nodeSelection.size();

              items.push(
                Lang.sub('<li class="carousel-menu-index-container"><menu>')
              );

              for (i = 0; i < len; i++) {
                  items.push(
                      Lang.sub(TPL_ITEM, {
                          cssClasses: activeIndex === i ? CSS_MENU_ITEM_ACTIVE : CSS_MENU_ITEM_DEFAULT,
                          index: i
                      })
                  );
              }

              items.push(
                Lang.sub('</menu></li>')
              );

              var menu = A.Node.create(Lang.sub(TPL_MENU, {
                  items: items.join(' ')
              }));

              instance.get('contentBox').appendChild(menu);

              return menu;
          },

          _uiSetActiveIndex: function(newVal, objOptions) {
            var instance = this;

            var oldImage = null;
            var oldMenuItem = null;
            var onStart = null;
            var onEnd = null;

            var newImage = instance.nodeSelection.item(newVal);

            var menuNodes = instance.menuNodes;

            var newMenuItem = menuNodes.item(newVal);

            if (objOptions && !Lang.isUndefined(objOptions.prevVal)) {
              var prevVal = objOptions.prevVal;

              oldMenuItem = menuNodes.item(prevVal);
              oldImage = instance.nodeSelection.item(prevVal);
            }
            else {
              newImage.addClass(CSS_ITEM_ACTIVE);
            }

            if (objOptions) {
              var animate = objOptions.animate;

              instance._onAnimationStart(animate, newImage, oldImage, newMenuItem, oldMenuItem, prevVal, newVal);

              if (objOptions.src == UI_SRC && objOptions.animate) {
                instance._createIntervalRotationTask();
              }
            }
          }
        }
      }
    );

    A.ZoeCarousel = ZoeCarousel;
  },
  '',
  {
    requires: ['aui-carousel', 'transition']
  }
);
