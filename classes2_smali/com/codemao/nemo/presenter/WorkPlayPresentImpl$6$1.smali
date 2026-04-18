.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$1;
.super Ljava/lang/Object;
.source "WorkPlayPresentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->onInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$1;->this$1:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$1;->this$1:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;

    iget-object v0, v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onInitSuccess()V

    return-void
.end method
