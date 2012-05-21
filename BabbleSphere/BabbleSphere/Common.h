//
//  Common.h
//  BabbleSphere
//
//  Created by Tung Ngo on 5/21/12.
//  Copyright (c) 2012 SETA:CINQ Vietnam., Ltd. All rights reserved.
//

#ifndef BabbleSphere_Common_h
#define BabbleSphere_Common_h

#define BABBLESPHERE_THEME_COLOR  [UIColor colorWithRed:164/255. green:63/255. blue:107/255. alpha:1.0]

#define StringIsNull(x)     ((x == nil || [x isEqual:[NSNull null]])? YES: NO)
#define StringIsEmpty(x)    ((x == nil || [x isEqual:[NSNull null]] || [x length] == 0)? YES: NO)

#endif
