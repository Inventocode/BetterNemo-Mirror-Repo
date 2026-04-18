.class public final Lcom/codemao/toolssdk/permissionx/request/ForwardScope;
.super Ljava/lang/Object;
.source "ForwardScope.kt"


# instance fields
.field private final chainTask:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

.field private final pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4

    const-string v0, "pb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 30
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->chainTask:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    return-void
.end method


# virtual methods
.method public final showForwardToSettingsDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 52
    iget-object v2, p0, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->chainTask:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 51
    invoke-virtual/range {v1 .. v8}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showHandlePermissionDialog(Lcom/codemao/toolssdk/permissionx/request/ChainTask;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
