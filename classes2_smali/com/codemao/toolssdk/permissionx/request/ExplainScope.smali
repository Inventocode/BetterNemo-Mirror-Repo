.class public final Lcom/codemao/toolssdk/permissionx/request/ExplainScope;
.super Ljava/lang/Object;
.source "ExplainScope.kt"


# instance fields
.field private final chainTask:Lcom/codemao/toolssdk/permissionx/request/ChainTask;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4

    const-string v0, "pb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chainTask"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/ExplainScope;->chainTask:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    return-void
.end method
