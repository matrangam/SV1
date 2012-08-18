#import <UIKit/UIKit.h>

@interface SVViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton* voiceButton;

- (IBAction) voiceButtonPressed:(id)sender;

@end
