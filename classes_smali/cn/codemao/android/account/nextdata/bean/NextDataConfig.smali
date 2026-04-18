.class public Lcn/codemao/android/account/nextdata/bean/NextDataConfig;
.super Ljava/lang/Object;
.source "NextDataConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR_ID:I = 0x106000d


# instance fields
.field private isCloseByTouchOutside:Z

.field private mAppId:Ljava/lang/String;

.field private mBgColorId:I

.field private mCaptchaMode:Ljava/lang/String;

.field private mCaptchaWidthRatio:F

.field private mChannel:Ljava/lang/String;

.field private mReCheckNum:I

.field private mShowGravity:I

.field private mTip:Ljava/lang/String;

.field private mWHRatio:F

.field private needShowClose:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x106000d

    .line 29
    iput v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mBgColorId:I

    const-string v0, "slide"

    .line 36
    iput-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mCaptchaMode:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mTip:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mChannel:Ljava/lang/String;

    const v0, 0x3f666666  # 0.9f

    .line 49
    iput v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mCaptchaWidthRatio:F

    const/high16 v0, 0x3fc00000  # 1.5f

    .line 54
    iput v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mWHRatio:F

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->isCloseByTouchOutside:Z

    const/16 v1, 0x11

    .line 66
    iput v1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mShowGravity:I

    .line 71
    iput-boolean v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->needShowClose:Z

    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mReCheckNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/account/nextdata/bean/NextDataConfig$1;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->needShowClose:Z

    return p1
.end method

.method static synthetic access$102(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;I)I
    .registers 2

    .line 20
    iput p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mReCheckNum:I

    return p1
.end method

.method static synthetic access$202(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;F)F
    .registers 2

    .line 20
    iput p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mCaptchaWidthRatio:F

    return p1
.end method

.method static synthetic access$302(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;F)F
    .registers 2

    .line 20
    iput p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mWHRatio:F

    return p1
.end method

.method static synthetic access$402(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mTip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mCaptchaMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;I)I
    .registers 2

    .line 20
    iput p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mBgColorId:I

    return p1
.end method

.method static synthetic access$802(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->isCloseByTouchOutside:Z

    return p1
.end method

.method static synthetic access$902(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;I)I
    .registers 2

    .line 20
    iput p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mShowGravity:I

    return p1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBgColorId()I
    .registers 2

    .line 107
    iget v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mBgColorId:I

    return v0
.end method

.method public getCaptchaMode()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mCaptchaMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaWidthRatio()F
    .registers 2

    .line 123
    iget v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mCaptchaWidthRatio:F

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getReCheckNum()I
    .registers 2

    .line 94
    iget v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mReCheckNum:I

    return v0
.end method

.method public getShowGravity()I
    .registers 2

    .line 135
    iget v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mShowGravity:I

    return v0
.end method

.method public getTip()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mTip:Ljava/lang/String;

    return-object v0
.end method

.method public getWHRatio()F
    .registers 2

    .line 127
    iget v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mWHRatio:F

    return v0
.end method

.method public isCloseByTouchOutside()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->isCloseByTouchOutside:Z

    return v0
.end method

.method public isNeedShowClose()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->needShowClose:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->mAppId:Ljava/lang/String;

    return-void
.end method
