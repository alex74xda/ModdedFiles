.class public Lcom/sec/android/gradient_color_extractor/CallGradient;
.super Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.source "CallGradient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;
    }
.end annotation


# static fields
.field static mColorGroup_pallete:[[F

.field static mColor_pallete:[[F

.field static mColor_pallete_for_lockscreen:[[F

.field static mGray_scale_pallete:[[F

.field static mWallPaperColor_highBrightness_pallete:[[F

.field static mWallPaperColor_lowBrightness_pallete:[[F

.field static mWallPaperIndexTable:[I

.field static mWallpaperColor_monotone:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/16 v0, 0x41

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [F

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [F

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [F

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [F

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [F

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [F

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [F

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [F

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [F

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [F

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [F

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [F

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [F

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [F

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [F

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [F

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [F

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [F

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [F

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [F

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [F

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [F

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [F

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [F

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [F

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [F

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [F

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_44

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_45

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_46

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_47

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_48

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/16 v0, 0x41

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_51

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_52

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_53

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_54

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_55

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_6b

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_6d

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_6f

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_71

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_73

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_75

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_76

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [F

    fill-array-data v2, :array_77

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [F

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [F

    fill-array-data v2, :array_79

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [F

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [F

    fill-array-data v2, :array_7b

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [F

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [F

    fill-array-data v2, :array_7d

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [F

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [F

    fill-array-data v2, :array_7f

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [F

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [F

    fill-array-data v2, :array_81

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [F

    fill-array-data v2, :array_82

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [F

    fill-array-data v2, :array_83

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [F

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [F

    fill-array-data v2, :array_85

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [F

    fill-array-data v2, :array_86

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [F

    fill-array-data v2, :array_87

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [F

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [F

    fill-array-data v2, :array_89

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [F

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [F

    fill-array-data v2, :array_8b

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [F

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [F

    fill-array-data v2, :array_8d

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [F

    fill-array-data v2, :array_8e

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [F

    fill-array-data v2, :array_8f

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [F

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [F

    fill-array-data v2, :array_91

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v0, 0x26

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_92

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_93

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_94

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_95

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_96

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_97

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_99

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_9a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_9b

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_9d

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_9f

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_a1

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_a3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_a5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_a6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_a7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_a9

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_ab

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_ac

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_ad

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_af

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_b1

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_b2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_b3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_b5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_b7

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    const/16 v0, 0x26

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_b8

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_b9

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_ba

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_bb

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_bc

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_bd

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_be

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_bf

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_c1

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_c3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_c5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_c7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_c9

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_ca

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_cb

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_cd

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_cf

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_d1

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_d2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_d3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_d5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_d7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_d9

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_db

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_dc

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_dd

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    new-array v0, v6, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_de

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_df

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_e0

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    return-void

    :array_0
    .array-data 4
        0x434d0000    # 205.0f
        0x41880000    # 17.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_1
    .array-data 4
        0x434d0000    # 205.0f
        0x41880000    # 17.0f
        0x42480000    # 50.0f
    .end array-data

    :array_2
    .array-data 4
        0x434d0000    # 205.0f
        0x41500000    # 13.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_3
    .array-data 4
        0x40a00000    # 5.0f
        0x41f00000    # 30.0f
        0x429c0000    # 78.0f
    .end array-data

    :array_4
    .array-data 4
        0x41600000    # 14.0f
        0x41f00000    # 30.0f
        0x42960000    # 75.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x42340000    # 45.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_6
    .array-data 4
        0x41880000    # 17.0f
        0x423c0000    # 47.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_7
    .array-data 4
        0x41c80000    # 25.0f
        0x41f00000    # 30.0f
        0x42900000    # 72.0f
    .end array-data

    :array_8
    .array-data 4
        0x420c0000    # 35.0f
        0x41f00000    # 30.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_9
    .array-data 4
        0x42100000    # 36.0f
        0x42200000    # 40.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_a
    .array-data 4
        0x42340000    # 45.0f
        0x420c0000    # 35.0f
        0x42900000    # 72.0f
    .end array-data

    :array_b
    .array-data 4
        0x425c0000    # 55.0f
        0x42200000    # 40.0f
        0x42900000    # 72.0f
    .end array-data

    :array_c
    .array-data 4
        0x42340000    # 45.0f
        0x42340000    # 45.0f
        0x429c0000    # 78.0f
    .end array-data

    :array_d
    .array-data 4
        0x428a0000    # 69.0f
        0x42140000    # 37.0f
        0x42940000    # 74.0f
    .end array-data

    :array_e
    .array-data 4
        0x429c0000    # 78.0f
        0x41e00000    # 28.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_f
    .array-data 4
        0x42b20000    # 89.0f
        0x41f00000    # 30.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_10
    .array-data 4
        0x42ce0000    # 103.0f
        0x41f00000    # 30.0f
        0x42960000    # 75.0f
    .end array-data

    :array_11
    .array-data 4
        0x43070000    # 135.0f
        0x41b80000    # 23.0f
        0x42940000    # 74.0f
    .end array-data

    :array_12
    .array-data 4
        0x43020000    # 130.0f
        0x42000000    # 32.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_13
    .array-data 4
        0x431b0000    # 155.0f
        0x41c00000    # 24.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_14
    .array-data 4
        0x431b0000    # 155.0f
        0x420c0000    # 35.0f
        0x42940000    # 74.0f
    .end array-data

    :array_15
    .array-data 4
        0x432f0000    # 175.0f
        0x41c80000    # 25.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_16
    .array-data 4
        0x43220000    # 162.0f
        0x420c0000    # 35.0f
        0x42940000    # 74.0f
    .end array-data

    :array_17
    .array-data 4
        0x43320000    # 178.0f
        0x420c0000    # 35.0f
        0x42940000    # 74.0f
    .end array-data

    :array_18
    .array-data 4
        0x43370000    # 183.0f
        0x420c0000    # 35.0f
        0x42960000    # 75.0f
    .end array-data

    :array_19
    .array-data 4
        0x43450000    # 197.0f
        0x420c0000    # 35.0f
        0x42960000    # 75.0f
    .end array-data

    :array_1a
    .array-data 4
        0x434d0000    # 205.0f
        0x420c0000    # 35.0f
        0x42960000    # 75.0f
    .end array-data

    :array_1b
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x429c0000    # 78.0f
    .end array-data

    :array_1c
    .array-data 4
        0x435a0000    # 218.0f
        0x41a00000    # 20.0f
        0x42960000    # 75.0f
    .end array-data

    :array_1d
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42960000    # 75.0f
    .end array-data

    :array_1e
    .array-data 4
        0x43750000    # 245.0f
        0x41c80000    # 25.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_1f
    .array-data 4
        0x43820000    # 260.0f
        0x41c80000    # 25.0f
        0x42960000    # 75.0f
    .end array-data

    :array_20
    .array-data 4
        0x43820000    # 260.0f
        0x41f00000    # 30.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_21
    .array-data 4
        0x438e8000    # 285.0f
        0x41980000    # 19.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_22
    .array-data 4
        0x43938000    # 295.0f
        0x41700000    # 15.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_23
    .array-data 4
        0x439b0000    # 310.0f
        0x41c80000    # 25.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_24
    .array-data 4
        0x439d8000    # 315.0f
        0x41b80000    # 23.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_25
    .array-data 4
        0x43a28000    # 325.0f
        0x41b80000    # 23.0f
        0x42960000    # 75.0f
    .end array-data

    :array_26
    .array-data 4
        0x43a78000    # 335.0f
        0x41e80000    # 29.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_27
    .array-data 4
        0x43ac8000    # 345.0f
        0x420c0000    # 35.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_28
    .array-data 4
        0x43ac8000    # 345.0f
        0x41b80000    # 23.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_29
    .array-data 4
        0x43b28000    # 357.0f
        0x42140000    # 37.0f
        0x429a0000    # 77.0f
    .end array-data

    :array_2a
    .array-data 4
        0x43b28000    # 357.0f
        0x41c80000    # 25.0f
        0x42920000    # 73.0f
    .end array-data

    :array_2b
    .array-data 4
        0x40e00000    # 7.0f
        0x42180000    # 38.0f
        0x42880000    # 68.0f
    .end array-data

    :array_2c
    .array-data 4
        0x42680000    # 58.0f
        0x420c0000    # 35.0f
        0x42880000    # 68.0f
    .end array-data

    :array_2d
    .array-data 4
        0x429c0000    # 78.0f
        0x41f80000    # 31.0f
        0x42880000    # 68.0f
    .end array-data

    :array_2e
    .array-data 4
        0x42c20000    # 97.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_2f
    .array-data 4
        0x42d20000    # 105.0f
        0x41c00000    # 24.0f
        0x42800000    # 64.0f
    .end array-data

    :array_30
    .array-data 4
        0x43000000    # 128.0f
        0x41b80000    # 23.0f
        0x42800000    # 64.0f
    .end array-data

    :array_31
    .array-data 4
        0x430b0000    # 139.0f
        0x41f00000    # 30.0f
        0x428a0000    # 69.0f
    .end array-data

    :array_32
    .array-data 4
        0x43110000    # 145.0f
        0x41b00000    # 22.0f
        0x428a0000    # 69.0f
    .end array-data

    :array_33
    .array-data 4
        0x431d0000    # 157.0f
        0x42100000    # 36.0f
        0x428a0000    # 69.0f
    .end array-data

    :array_34
    .array-data 4
        0x43250000    # 165.0f
        0x41d00000    # 26.0f
        0x428a0000    # 69.0f
    .end array-data

    :array_35
    .array-data 4
        0x432f0000    # 175.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_36
    .array-data 4
        0x43360000    # 182.0f
        0x420c0000    # 35.0f
        0x42880000    # 68.0f
    .end array-data

    :array_37
    .array-data 4
        0x43430000    # 195.0f
        0x42200000    # 40.0f
        0x42880000    # 68.0f
    .end array-data

    :array_38
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_39
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_3a
    .array-data 4
        0x43700000    # 240.0f
        0x41d00000    # 26.0f
        0x42880000    # 68.0f
    .end array-data

    :array_3b
    .array-data 4
        0x437f0000    # 255.0f
        0x41a00000    # 20.0f
        0x42880000    # 68.0f
    .end array-data

    :array_3c
    .array-data 4
        0x43830000    # 262.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_3d
    .array-data 4
        0x438e8000    # 285.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_3e
    .array-data 4
        0x43948000    # 297.0f
        0x41900000    # 18.0f
        0x42880000    # 68.0f
    .end array-data

    :array_3f
    .array-data 4
        0x439f8000    # 319.0f
        0x41e00000    # 28.0f
        0x42820000    # 65.0f
    .end array-data

    :array_40
    .array-data 4
        0x43988000    # 305.0f
        0x41a00000    # 20.0f
        0x42820000    # 65.0f
    .end array-data

    :array_41
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_42
    .array-data 4
        0x43ac8000    # 345.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_43
    .array-data 4
        0x43b30000    # 358.0f
        0x41e00000    # 28.0f
        0x42880000    # 68.0f
    .end array-data

    :array_44
    .array-data 4
        0x0
        0x421c0000    # 39.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_45
    .array-data 4
        0x41a00000    # 20.0f
        0x426c0000    # 59.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_46
    .array-data 4
        0x42200000    # 40.0f
        0x429e0000    # 79.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_47
    .array-data 4
        0x42700000    # 60.0f
        0x42c60000    # 99.0f
        0x41c80000    # 25.0f
    .end array-data

    :array_48
    .array-data 4
        0x42a00000    # 80.0f
        0x431f0000    # 159.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_49
    .array-data 4
        0x430c0000    # 140.0f
        0x43330000    # 179.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4a
    .array-data 4
        0x43200000    # 160.0f
        0x43470000    # 199.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4b
    .array-data 4
        0x43340000    # 180.0f
        0x435b0000    # 219.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4c
    .array-data 4
        0x43480000    # 200.0f
        0x43818000    # 259.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4d
    .array-data 4
        0x43700000    # 240.0f
        0x43818000    # 259.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4e
    .array-data 4
        0x43700000    # 240.0f
        0x438b8000    # 279.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4f
    .array-data 4
        0x43820000    # 260.0f
        0x43a98000    # 339.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_50
    .array-data 4
        0x43960000    # 300.0f
        0x43b40000    # 360.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_51
    .array-data 4
        0x40a00000    # 5.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_52
    .array-data 4
        0x41600000    # 14.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_53
    .array-data 4
        0x41000000    # 8.0f
        0x42340000    # 45.0f
        0x42860000    # 67.0f
    .end array-data

    :array_54
    .array-data 4
        0x41880000    # 17.0f
        0x423c0000    # 47.0f
        0x42860000    # 67.0f
    .end array-data

    :array_55
    .array-data 4
        0x41c80000    # 25.0f
        0x41f00000    # 30.0f
        0x42780000    # 62.0f
    .end array-data

    :array_56
    .array-data 4
        0x420c0000    # 35.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_57
    .array-data 4
        0x42100000    # 36.0f
        0x42200000    # 40.0f
        0x42860000    # 67.0f
    .end array-data

    :array_58
    .array-data 4
        0x42340000    # 45.0f
        0x420c0000    # 35.0f
        0x42780000    # 62.0f
    .end array-data

    :array_59
    .array-data 4
        0x425c0000    # 55.0f
        0x42200000    # 40.0f
        0x42780000    # 62.0f
    .end array-data

    :array_5a
    .array-data 4
        0x42340000    # 45.0f
        0x42340000    # 45.0f
        0x42880000    # 68.0f
    .end array-data

    :array_5b
    .array-data 4
        0x428a0000    # 69.0f
        0x42140000    # 37.0f
        0x42800000    # 64.0f
    .end array-data

    :array_5c
    .array-data 4
        0x429c0000    # 78.0f
        0x41e00000    # 28.0f
        0x42700000    # 60.0f
    .end array-data

    :array_5d
    .array-data 4
        0x42b20000    # 89.0f
        0x41f00000    # 30.0f
        0x42860000    # 67.0f
    .end array-data

    :array_5e
    .array-data 4
        0x42ce0000    # 103.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_5f
    .array-data 4
        0x43070000    # 135.0f
        0x41b80000    # 23.0f
        0x42800000    # 64.0f
    .end array-data

    :array_60
    .array-data 4
        0x43020000    # 130.0f
        0x42000000    # 32.0f
        0x42860000    # 67.0f
    .end array-data

    :array_61
    .array-data 4
        0x431b0000    # 155.0f
        0x41c00000    # 24.0f
        0x42700000    # 60.0f
    .end array-data

    :array_62
    .array-data 4
        0x431b0000    # 155.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_63
    .array-data 4
        0x432f0000    # 175.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_64
    .array-data 4
        0x43220000    # 162.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_65
    .array-data 4
        0x43320000    # 178.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_66
    .array-data 4
        0x43370000    # 183.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_67
    .array-data 4
        0x43450000    # 197.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_68
    .array-data 4
        0x434d0000    # 205.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_69
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_6a
    .array-data 4
        0x435a0000    # 218.0f
        0x41a00000    # 20.0f
        0x42820000    # 65.0f
    .end array-data

    :array_6b
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_6c
    .array-data 4
        0x43750000    # 245.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_6d
    .array-data 4
        0x43820000    # 260.0f
        0x41c80000    # 25.0f
        0x42820000    # 65.0f
    .end array-data

    :array_6e
    .array-data 4
        0x43820000    # 260.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_6f
    .array-data 4
        0x438e8000    # 285.0f
        0x41980000    # 19.0f
        0x42700000    # 60.0f
    .end array-data

    :array_70
    .array-data 4
        0x43938000    # 295.0f
        0x41700000    # 15.0f
        0x42700000    # 60.0f
    .end array-data

    :array_71
    .array-data 4
        0x439b0000    # 310.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_72
    .array-data 4
        0x439d8000    # 315.0f
        0x41b80000    # 23.0f
        0x42860000    # 67.0f
    .end array-data

    :array_73
    .array-data 4
        0x43a28000    # 325.0f
        0x41b80000    # 23.0f
        0x42820000    # 65.0f
    .end array-data

    :array_74
    .array-data 4
        0x43a78000    # 335.0f
        0x41e80000    # 29.0f
        0x42700000    # 60.0f
    .end array-data

    :array_75
    .array-data 4
        0x43ac8000    # 345.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_76
    .array-data 4
        0x43ac8000    # 345.0f
        0x41b80000    # 23.0f
        0x42700000    # 60.0f
    .end array-data

    :array_77
    .array-data 4
        0x43b28000    # 357.0f
        0x42140000    # 37.0f
        0x42860000    # 67.0f
    .end array-data

    :array_78
    .array-data 4
        0x43b28000    # 357.0f
        0x41c80000    # 25.0f
        0x427c0000    # 63.0f
    .end array-data

    :array_79
    .array-data 4
        0x40e00000    # 7.0f
        0x42180000    # 38.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7a
    .array-data 4
        0x42680000    # 58.0f
        0x420c0000    # 35.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7b
    .array-data 4
        0x429c0000    # 78.0f
        0x41f80000    # 31.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7c
    .array-data 4
        0x42c20000    # 97.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7d
    .array-data 4
        0x42d20000    # 105.0f
        0x41c00000    # 24.0f
        0x42580000    # 54.0f
    .end array-data

    :array_7e
    .array-data 4
        0x43000000    # 128.0f
        0x41b80000    # 23.0f
        0x42580000    # 54.0f
    .end array-data

    :array_7f
    .array-data 4
        0x430b0000    # 139.0f
        0x41f00000    # 30.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_80
    .array-data 4
        0x43110000    # 145.0f
        0x41b00000    # 22.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_81
    .array-data 4
        0x431d0000    # 157.0f
        0x42100000    # 36.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_82
    .array-data 4
        0x43250000    # 165.0f
        0x41d00000    # 26.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_83
    .array-data 4
        0x432f0000    # 175.0f
        0x420c0000    # 35.0f
        0x42580000    # 54.0f
    .end array-data

    :array_84
    .array-data 4
        0x43360000    # 182.0f
        0x420c0000    # 35.0f
        0x42680000    # 58.0f
    .end array-data

    :array_85
    .array-data 4
        0x43430000    # 195.0f
        0x42200000    # 40.0f
        0x42680000    # 58.0f
    .end array-data

    :array_86
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_87
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_88
    .array-data 4
        0x43700000    # 240.0f
        0x41d00000    # 26.0f
        0x42680000    # 58.0f
    .end array-data

    :array_89
    .array-data 4
        0x437f0000    # 255.0f
        0x41a00000    # 20.0f
        0x42680000    # 58.0f
    .end array-data

    :array_8a
    .array-data 4
        0x43830000    # 262.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_8b
    .array-data 4
        0x438e8000    # 285.0f
        0x41f00000    # 30.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_8c
    .array-data 4
        0x43948000    # 297.0f
        0x41900000    # 18.0f
        0x42680000    # 58.0f
    .end array-data

    :array_8d
    .array-data 4
        0x439f8000    # 319.0f
        0x41e00000    # 28.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_8e
    .array-data 4
        0x43988000    # 305.0f
        0x41a00000    # 20.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_8f
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_90
    .array-data 4
        0x43ac8000    # 345.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_91
    .array-data 4
        0x43b30000    # 358.0f
        0x41e00000    # 28.0f
        0x42680000    # 58.0f
    .end array-data

    :array_92
    .array-data 4
        0x40000000    # 2.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
    .end array-data

    :array_93
    .array-data 4
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_94
    .array-data 4
        0x41880000    # 17.0f
        0x42480000    # 50.0f
        0x42820000    # 65.0f
    .end array-data

    :array_95
    .array-data 4
        0x420c0000    # 35.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_96
    .array-data 4
        0x41880000    # 17.0f
        0x42480000    # 50.0f
        0x42820000    # 65.0f
    .end array-data

    :array_97
    .array-data 4
        0x420c0000    # 35.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_98
    .array-data 4
        0x42340000    # 45.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
    .end array-data

    :array_99
    .array-data 4
        0x42960000    # 75.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9a
    .array-data 4
        0x42340000    # 45.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
    .end array-data

    :array_9b
    .array-data 4
        0x42960000    # 75.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9c
    .array-data 4
        0x42b40000    # 90.0f
        0x42340000    # 45.0f
        0x42480000    # 50.0f
    .end array-data

    :array_9d
    .array-data 4
        0x42d20000    # 105.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9e
    .array-data 4
        0x42b40000    # 90.0f
        0x42340000    # 45.0f
        0x42480000    # 50.0f
    .end array-data

    :array_9f
    .array-data 4
        0x42d20000    # 105.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a0
    .array-data 4
        0x43000000    # 128.0f
        0x42340000    # 45.0f
        0x42480000    # 50.0f
    .end array-data

    :array_a1
    .array-data 4
        0x43160000    # 150.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a2
    .array-data 4
        0x43000000    # 128.0f
        0x42340000    # 45.0f
        0x42480000    # 50.0f
    .end array-data

    :array_a3
    .array-data 4
        0x43160000    # 150.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a4
    .array-data 4
        0x432a0000    # 170.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_a5
    .array-data 4
        0x433e0000    # 190.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a6
    .array-data 4
        0x432a0000    # 170.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_a7
    .array-data 4
        0x433e0000    # 190.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a8
    .array-data 4
        0x433c0000    # 188.0f
        0x428c0000    # 70.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_a9
    .array-data 4
        0x43530000    # 211.0f
        0x42200000    # 40.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_aa
    .array-data 4
        0x433c0000    # 188.0f
        0x428c0000    # 70.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_ab
    .array-data 4
        0x43530000    # 211.0f
        0x42200000    # 40.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_ac
    .array-data 4
        0x437f0000    # 255.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_ad
    .array-data 4
        0x43898000    # 275.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ae
    .array-data 4
        0x437f0000    # 255.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_af
    .array-data 4
        0x43898000    # 275.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b0
    .array-data 4
        0x43938000    # 295.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_b1
    .array-data 4
        0x439d8000    # 315.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b2
    .array-data 4
        0x43938000    # 295.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_b3
    .array-data 4
        0x439d8000    # 315.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b4
    .array-data 4
        0x43a90000    # 338.0f
        0x425c0000    # 55.0f
        0x42540000    # 53.0f
    .end array-data

    :array_b5
    .array-data 4
        0x43b18000    # 355.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b6
    .array-data 4
        0x43a90000    # 338.0f
        0x425c0000    # 55.0f
        0x42540000    # 53.0f
    .end array-data

    :array_b7
    .array-data 4
        0x43b18000    # 355.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b8
    .array-data 4
        0x40000000    # 2.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_b9
    .array-data 4
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ba
    .array-data 4
        0x41880000    # 17.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_bb
    .array-data 4
        0x420c0000    # 35.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_bc
    .array-data 4
        0x41880000    # 17.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_bd
    .array-data 4
        0x420c0000    # 35.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_be
    .array-data 4
        0x42340000    # 45.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_bf
    .array-data 4
        0x42960000    # 75.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c0
    .array-data 4
        0x42340000    # 45.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_c1
    .array-data 4
        0x42960000    # 75.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c2
    .array-data 4
        0x42b40000    # 90.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c3
    .array-data 4
        0x42d20000    # 105.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c4
    .array-data 4
        0x42b40000    # 90.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c5
    .array-data 4
        0x42d20000    # 105.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c6
    .array-data 4
        0x43000000    # 128.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c7
    .array-data 4
        0x43160000    # 150.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c8
    .array-data 4
        0x43000000    # 128.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c9
    .array-data 4
        0x43160000    # 150.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ca
    .array-data 4
        0x432a0000    # 170.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_cb
    .array-data 4
        0x433e0000    # 190.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_cc
    .array-data 4
        0x432a0000    # 170.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_cd
    .array-data 4
        0x433e0000    # 190.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ce
    .array-data 4
        0x433c0000    # 188.0f
        0x42200000    # 40.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_cf
    .array-data 4
        0x435d0000    # 221.0f
        0x42200000    # 40.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_d0
    .array-data 4
        0x433c0000    # 188.0f
        0x42200000    # 40.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_d1
    .array-data 4
        0x435d0000    # 221.0f
        0x42200000    # 40.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_d2
    .array-data 4
        0x437f0000    # 255.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d3
    .array-data 4
        0x43898000    # 275.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d4
    .array-data 4
        0x437f0000    # 255.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d5
    .array-data 4
        0x43898000    # 275.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d6
    .array-data 4
        0x43938000    # 295.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d7
    .array-data 4
        0x439d8000    # 315.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d8
    .array-data 4
        0x43938000    # 295.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d9
    .array-data 4
        0x439d8000    # 315.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_da
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x42540000    # 53.0f
    .end array-data

    :array_db
    .array-data 4
        0x43b18000    # 355.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_dc
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x42540000    # 53.0f
    .end array-data

    :array_dd
    .array-data 4
        0x43b18000    # 355.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_de
    .array-data 4
        0x434d0000    # 205.0f
        0x41a00000    # 20.0f
        0x42700000    # 60.0f
    .end array-data

    :array_df
    .array-data 4
        0x434d0000    # 205.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_e0
    .array-data 4
        0x9
        0x1d
        0x27
        0x3b
        0x4f
        0x63
        0x77
        0x8b
        0x9f
        0xb3
        0xc7
        0xdb
        0xef
        0x103
        0x117
        0x12b
        0x13f
        0x153
        0x168
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;-><init>()V

    return-void
.end method

.method public static findClosestColorFromColorPallete([[FI)I
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v0

    return v0
.end method

.method public static findClosestColorFromColorPallete([[FIFFFF)I
    .locals 12

    const/4 v6, 0x3

    new-array v1, v6, [F

    const/4 v6, 0x0

    aget-object v0, p0, v6

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    sget v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    invoke-static {v1, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    :goto_0
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    array-length v6, v6

    if-ge v2, v6, :cond_3

    const/4 v6, 0x3

    new-array v5, v6, [F

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    aget v6, v5, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x2

    aget v9, v1, v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v3, v6

    cmpg-float v6, v3, v4

    if-gez v6, :cond_0

    move-object v0, v5

    move v4, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v6, p0

    if-ge v2, v6, :cond_3

    const/4 v6, 0x3

    new-array v5, v6, [F

    const/4 v6, 0x0

    aget-object v7, p0, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, p0, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    aget-object v7, p0, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v5, v1, v6}, Lcom/sec/android/gradient_color_extractor/CallGradient;->colorDistance_hsv_square2([F[F[F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v3, v6, v7

    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    const/4 v6, 0x1

    aget v6, v5, v6

    cmpl-float v6, v6, p2

    if-lez v6, :cond_2

    const/4 v6, 0x1

    aget v6, v5, v6

    cmpg-float v6, v6, p3

    if-gez v6, :cond_2

    const/4 v6, 0x2

    aget v6, v5, v6

    cmpl-float v6, v6, p4

    if-lez v6, :cond_2

    const/4 v6, 0x2

    aget v6, v5, v6

    cmpg-float v6, v6, p5

    if-gez v6, :cond_2

    move-object v0, v5

    move v4, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    return v6

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method static findColorGroupIndices([F)[I
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    array-length v6, v6

    if-ge v0, v6, :cond_1

    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v6, v6, v0

    aget v4, v6, v8

    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v3, v6, v7

    aget v6, p0, v8

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_0

    aget v6, p0, v8

    cmpg-float v6, v6, v3

    if-gez v6, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x0

    :cond_2
    return-object v5

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static getAdjustedGradientColor([[F[I)[[I
    .locals 42

    const v33, 0x3e4ccccd    # 0.2f

    const v32, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    aget v36, p1, v2

    const/4 v2, 0x1

    aget v14, p1, v2

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v40, v0

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    move/from16 v0, v36

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v40

    invoke-static {v0, v2, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v27

    sget v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v26

    if-eqz v27, :cond_6

    if-eqz v26, :cond_6

    const/16 v39, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x2

    aget v2, v40, v2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/16 v39, 0x1

    :cond_0
    const/4 v2, 0x2

    aget v2, v18, v2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/16 v17, 0x1

    :cond_1
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v41

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v19

    move/from16 v0, v39

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    if-nez v39, :cond_4

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v40, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v40, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v18, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    :goto_0
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    :goto_1
    move/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x2

    aget v2, v40, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v2, 0x3ee66666    # 0.45f

    cmpl-float v2, v10, v2

    if-ltz v2, :cond_3

    if-eqz v27, :cond_2

    if-nez v26, :cond_3

    :cond_2
    const v12, 0x3e570a3d    # 0.21f

    const v11, 0x3ee147ae    # 0.44f

    if-eqz v26, :cond_22

    move-object/from16 v23, v18

    move-object/from16 v24, v40

    :goto_2
    const/4 v2, 0x2

    aget v2, v23, v2

    const/4 v3, 0x2

    aget v3, v24, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_23

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    aget v6, v23, v6

    sub-float/2addr v6, v12

    const/4 v7, 0x2

    aget v7, v23, v7

    sub-float/2addr v7, v11

    invoke-static/range {v2 .. v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_3
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v38, v4, v5

    const/4 v5, 0x1

    aput v16, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v41, v4, v5

    const/4 v5, 0x1

    aput v19, v4, v5

    aput-object v4, v2, v3

    return-object v2

    :cond_4
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v40, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v40, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v18, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_0

    :cond_5
    move/from16 v38, v41

    move/from16 v16, v19

    goto/16 :goto_1

    :cond_6
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v41

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v19

    if-eqz v26, :cond_a

    move/from16 v0, v41

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move/from16 v0, v19

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_4
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    aget v2, v40, v2

    const/4 v3, 0x1

    aget v3, v18, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v35

    cmpg-float v2, v35, v33

    if-gtz v2, :cond_7

    const/4 v9, 0x1

    :cond_7
    const/4 v2, 0x2

    aget v2, v40, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v2, v10, v32

    if-gtz v2, :cond_8

    const/4 v8, 0x1

    :cond_8
    if-eqz v9, :cond_12

    if-eqz v8, :cond_12

    invoke-static/range {v40 .. v40}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findColorGroupIndices([F)[I

    move-result-object v37

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findColorGroupIndices([F)[I

    move-result-object v15

    const/4 v2, 0x0

    aget v20, v15, v2

    const/4 v2, 0x0

    aget v21, v15, v2

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x0

    aget v30, v2, v3

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v21

    const/4 v3, 0x0

    aget v31, v2, v3

    const/16 v25, 0x1

    :goto_5
    array-length v2, v15

    move/from16 v0, v25

    if-ge v0, v2, :cond_c

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpg-float v2, v30, v2

    if-gez v2, :cond_b

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v30, v2, v3

    aget v20, v15, v25

    :cond_9
    :goto_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    :cond_a
    move/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_4

    :cond_b
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v2, v31, v2

    if-lez v2, :cond_9

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v31, v2, v3

    aget v21, v15, v25

    goto :goto_6

    :cond_c
    const/4 v2, 0x1

    aget v2, v40, v2

    const/4 v3, 0x1

    aget v3, v18, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    const/16 v22, 0x1

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v3, 0x0

    aget v3, v15, v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v29, v2, v3

    const/16 v25, 0x1

    :goto_7
    array-length v2, v15

    move/from16 v0, v25

    if-ge v0, v2, :cond_f

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpg-float v2, v29, v2

    if-gez v2, :cond_d

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v29, v2, v3

    :cond_d
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v3, 0x0

    aget v3, v15, v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v4, v15, v25

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    const/16 v22, 0x0

    :cond_e
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    :cond_f
    if-eqz v22, :cond_13

    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v5, 0x0

    aget v5, v15, v5

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v18, v2

    :cond_10
    :goto_8
    const/4 v2, 0x0

    aget v2, v18, v2

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1d

    const/4 v2, 0x0

    aget v3, v18, v2

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v3, v4

    aput v3, v18, v2

    :cond_11
    :goto_9
    const/4 v2, 0x2

    aget v2, v40, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    aget v2, v40, v2

    const/4 v3, 0x1

    aget v3, v18, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1e

    const/4 v2, 0x2

    aget v3, v40, v2

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v40, v2

    :cond_12
    :goto_a
    if-eqz v26, :cond_21

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    goto/16 :goto_1

    :cond_13
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v3, v3, v21

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float v13, v2, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v13, v2

    :cond_14
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_15

    const/4 v2, 0x0

    aget v3, v18, v2

    add-float v3, v3, v29

    aput v3, v18, v2

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    aget v3, v18, v2

    sub-float v3, v3, v29

    aput v3, v18, v2

    goto :goto_8

    :cond_16
    const/16 v34, 0x0

    const/16 v25, 0x0

    :goto_b
    move-object/from16 v0, v37

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_19

    const/16 v28, 0x0

    :goto_c
    array-length v2, v15

    move/from16 v0, v28

    if-ge v0, v2, :cond_18

    aget v2, v37, v25

    aget v3, v15, v28

    if-ne v2, v3, :cond_17

    add-int/lit8 v34, v34, 0x1

    :cond_17
    add-int/lit8 v28, v28, 0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    :cond_19
    const/4 v2, 0x1

    move/from16 v0, v34

    if-lt v0, v2, :cond_10

    const/4 v2, 0x0

    aget v2, v18, v2

    const/4 v3, 0x0

    aget v3, v40, v3

    sub-float v13, v2, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1a

    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v21

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    :cond_1a
    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    :cond_1b
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    :cond_1c
    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v21

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    :cond_1d
    const/4 v2, 0x0

    aget v2, v18, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    const/4 v2, 0x0

    aget v3, v18, v2

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_9

    :cond_1e
    const/4 v2, 0x2

    aget v3, v18, v2

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_a

    :cond_1f
    const/4 v2, 0x2

    aget v2, v40, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    const/4 v2, 0x2

    aget v3, v40, v2

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v40, v2

    goto/16 :goto_a

    :cond_20
    const/4 v2, 0x2

    aget v3, v18, v2

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_a

    :cond_21
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    goto/16 :goto_1

    :cond_22
    move-object/from16 v23, v40

    move-object/from16 v24, v18

    goto/16 :goto_2

    :cond_23
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    aget v6, v23, v6

    add-float/2addr v6, v12

    const/4 v7, 0x2

    aget v7, v23, v7

    add-float/2addr v7, v11

    invoke-static/range {v2 .. v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto/16 :goto_3
.end method

.method static getAdjustedGradientColor_wallpaper([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)[[I
    .locals 26

    const/16 v20, 0x0

    const/4 v9, 0x1

    aget-object v22, p0, v20

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v17, v0

    aget-object v22, p0, v9

    move-object/from16 v0, v22

    iget v6, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v6, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v15

    sget v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v0, v1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v14

    const v16, 0x3e4ccccd    # 0.2f

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v21

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    if-eqz v15, :cond_1

    if-eqz v14, :cond_1

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    :cond_0
    :goto_0
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v18

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v18, v24, v25

    const/16 v25, 0x1

    aput v7, v24, v25

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v21, v24, v25

    const/16 v25, 0x1

    aput v10, v24, v25

    aput-object v24, v22, v23

    :goto_1
    return-object v22

    :cond_1
    const/16 v22, 0x2

    aget v22, v19, v22

    cmpl-float v22, v22, v16

    if-ltz v22, :cond_2

    move-object/from16 v3, v19

    move v11, v9

    move/from16 v4, v20

    :goto_2
    aget-object v22, p0, v11

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    move/from16 v22, v0

    const v23, 0x3dcccccd    # 0.1f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_3

    sget-object v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v25, p0, v4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    aget-object v25, p0, v4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v22

    goto :goto_1

    :cond_2
    move-object v3, v8

    move/from16 v11, v20

    move v4, v9

    move/from16 v5, v21

    move/from16 v21, v10

    move v10, v5

    goto :goto_2

    :cond_3
    const/16 v22, 0x2

    aget v22, v19, v22

    cmpl-float v22, v22, v16

    if-ltz v22, :cond_4

    const/16 v22, 0x2

    aget v22, v8, v22

    cmpl-float v22, v22, v16

    if-gez v22, :cond_7

    :cond_4
    const/4 v12, 0x0

    :goto_3
    sget-object v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    const/16 v22, 0x0

    aget v22, v3, v22

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    aget v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_6

    mul-int/lit8 v13, v12, 0x2

    const/16 v22, 0x1

    aget v22, v3, v22

    const v23, 0x3ecccccd    # 0.4f

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_5

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    goto/16 :goto_0

    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_7
    sget-object v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v25, p0, v20

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    aget-object v25, p0, v9

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v22

    goto/16 :goto_1
.end method

.method public static getColorGroupPallete()[[F
    .locals 1

    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    return-object v0
.end method

.method public static getColor_pallete()[[F
    .locals 1

    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    return-object v0
.end method

.method public static getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;
    .locals 2

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;I)Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    move-result-object v1

    return-object v1
.end method

.method public static getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;I)Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v6, 0x3d4ccccd    # 0.05f

    const v5, 0x3eb33333    # 0.35f

    const v7, 0x3c1374bc    # 0.009f

    new-instance v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    invoke-direct {v1}, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;-><init>()V

    invoke-static {p1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->makeClusterrGroup_preset1(I)[I

    move-result-object v8

    invoke-static {p0, v8}, Lcom/sec/android/gradient_color_extractor/CallGradient;->kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor_wallpaper([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)[[I

    move-result-object v4

    aget-object v2, v4, v9

    aget-object v3, v4, v10

    iput-object v0, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->dominantColorResult:[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    iput-object v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColorIndexForDominantColor:[I

    aget v8, v3, v9

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a_original:I

    aget v8, v3, v10

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b_original:I

    aget v8, v2, v9

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    aget v8, v2, v10

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradientColorFromBitmap(Landroid/graphics/Bitmap;I)Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    move-result-object v2

    return-object v2
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;I)Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const v7, 0x3d4ccccd    # 0.05f

    const v6, 0x3eb33333    # 0.35f

    const v8, 0x3c1374bc    # 0.009f

    new-instance v2, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    invoke-direct {v2}, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;-><init>()V

    invoke-static {p1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->makeClusterrGroup_preset1(I)[I

    move-result-object v9

    invoke-static {p0, v9}, Lcom/sec/android/gradient_color_extractor/CallGradient;->kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object v0

    invoke-static {v0, v7, v6}, Lcom/sec/android/gradient_color_extractor/CallGradient;->find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;FF)[I

    move-result-object v1

    aget v9, v1, v12

    aget v10, v1, v13

    const/4 v11, 0x0

    invoke-static {v0, v9, v10, v11, v8}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findChromaticColorIndexForDoubleGrayColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)[I

    move-result-object v1

    sget-object v9, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    const/4 v10, 0x2

    new-array v10, v10, [I

    aget v11, v1, v12

    aget-object v11, v0, v11

    iget v11, v11, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    aput v11, v10, v12

    aget v11, v1, v13

    aget-object v11, v0, v11

    iget v11, v11, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    aput v11, v10, v13

    invoke-static {v9, v10}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v5

    aget-object v3, v5, v12

    aget-object v4, v5, v13

    iput-object v0, v2, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->dominantColorResult:[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    iput-object v1, v2, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColorIndexForDominantColor:[I

    aget v9, v4, v12

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a_original:I

    aget v9, v4, v13

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b_original:I

    aget v9, v3, v12

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    aget v9, v3, v13

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    return-object v2
.end method

.method public static getGray_scale_pallete()[[F
    .locals 1

    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    return-object v0
.end method

.method public static setColorGroupPallete([[F)V
    .locals 0

    sput-object p0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    return-void
.end method

.method public static setColorpallete([[F)V
    .locals 0

    sput-object p0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    return-void
.end method

.method public static setGrayScalePallete([[F)V
    .locals 0

    sput-object p0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    return-void
.end method
