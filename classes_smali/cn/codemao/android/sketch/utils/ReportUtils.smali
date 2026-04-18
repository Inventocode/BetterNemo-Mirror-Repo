.class public Lcn/codemao/android/sketch/utils/ReportUtils;
.super Ljava/lang/Object;
.source "ReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;,
        Lcn/codemao/android/sketch/utils/ReportUtils$SingletonHoler;
    }
.end annotation


# instance fields
.field private reportCallBack:Lcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/sketch/utils/ReportUtils$1;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcn/codemao/android/sketch/utils/ReportUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/sketch/utils/ReportUtils;
    .registers 1

    .line 20
    invoke-static {}, Lcn/codemao/android/sketch/utils/ReportUtils$SingletonHoler;->access$100()Lcn/codemao/android/sketch/utils/ReportUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Lcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/ReportUtils;->reportCallBack:Lcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;

    return-void
.end method

.method public sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/ReportUtils;->reportCallBack:Lcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;

    if-eqz v0, :cond_7

    .line 30
    invoke-interface {v0, p1, p2, p3}, Lcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method
