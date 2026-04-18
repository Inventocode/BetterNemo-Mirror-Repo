.class public final synthetic Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

.field public final synthetic f$1:Lcom/codemao/toolssdk/model/dsbridge/IResult;

.field public final synthetic f$2:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/model/dsbridge/IResult;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/model/dsbridge/IResult;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->$r8$lambda$P7MlKkWdnRQ1BxfZVJ_x5K71uKk(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    return-void
.end method
