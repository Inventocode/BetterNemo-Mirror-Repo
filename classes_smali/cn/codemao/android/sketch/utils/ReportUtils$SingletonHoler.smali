.class Lcn/codemao/android/sketch/utils/ReportUtils$SingletonHoler;
.super Ljava/lang/Object;
.source "ReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/utils/ReportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHoler"
.end annotation


# static fields
.field private static instance:Lcn/codemao/android/sketch/utils/ReportUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcn/codemao/android/sketch/utils/ReportUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/utils/ReportUtils;-><init>(Lcn/codemao/android/sketch/utils/ReportUtils$1;)V

    sput-object v0, Lcn/codemao/android/sketch/utils/ReportUtils$SingletonHoler;->instance:Lcn/codemao/android/sketch/utils/ReportUtils;

    return-void
.end method

.method static synthetic access$100()Lcn/codemao/android/sketch/utils/ReportUtils;
    .registers 1

    .line 10
    sget-object v0, Lcn/codemao/android/sketch/utils/ReportUtils$SingletonHoler;->instance:Lcn/codemao/android/sketch/utils/ReportUtils;

    return-object v0
.end method
