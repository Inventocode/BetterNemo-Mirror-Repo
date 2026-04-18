.class Lcn/codemao/android/account/nextdata/NextDataCaptchaManager$SingletonInstance;
.super Ljava/lang/Object;
.source "NextDataCaptchaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;-><init>(Lcn/codemao/android/account/nextdata/NextDataCaptchaManager$1;)V

    sput-object v0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager$SingletonInstance;->INSTANCE:Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;
    .registers 1

    .line 21
    sget-object v0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager$SingletonInstance;->INSTANCE:Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    return-object v0
.end method
