.class public final synthetic Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/manager/CMToolsManager;

.field public final synthetic f$1:Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda4;->f$0:Lcom/codemao/toolssdk/manager/CMToolsManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda4;->f$1:Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda4;->f$0:Lcom/codemao/toolssdk/manager/CMToolsManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda4;->f$1:Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->$r8$lambda$7_z2syCuPvkk0tVJTKhd1JJoNO0(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    return-void
.end method
