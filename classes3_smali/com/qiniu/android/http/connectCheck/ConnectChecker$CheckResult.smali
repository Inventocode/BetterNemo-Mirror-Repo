.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;
.super Ljava/lang/Object;
.source "ConnectChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckResult"
.end annotation


# instance fields
.field private metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;)V
    .registers 2

    .line 163
    invoke-direct {p0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    return-object p0
.end method

.method static synthetic access$102(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    return-object p1
.end method
