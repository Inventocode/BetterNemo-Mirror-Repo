.class public final Lcom/ljwx/baseapp/util/BaseModuleLog;
.super Ljava/lang/Object;
.source "BaseModuleLog.kt"


# static fields
.field public static final INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-direct {v0}, Lcom/ljwx/baseapp/util/BaseModuleLog;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
