.class Lcn/codemao/android/account/tccapture/TcCaptchaManager$SingletonInstance;
.super Ljava/lang/Object;
.source "TcCaptchaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/tccapture/TcCaptchaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcn/codemao/android/account/tccapture/TcCaptchaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;-><init>(Lcn/codemao/android/account/tccapture/TcCaptchaManager$1;)V

    sput-object v0, Lcn/codemao/android/account/tccapture/TcCaptchaManager$SingletonInstance;->INSTANCE:Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/codemao/android/account/tccapture/TcCaptchaManager;
    .registers 1

    .line 22
    sget-object v0, Lcn/codemao/android/account/tccapture/TcCaptchaManager$SingletonInstance;->INSTANCE:Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    return-object v0
.end method
