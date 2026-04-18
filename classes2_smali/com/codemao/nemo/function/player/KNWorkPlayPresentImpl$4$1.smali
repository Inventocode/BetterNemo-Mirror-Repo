.class Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$1;
.super Ljava/lang/Object;
.source "KNWorkPlayPresentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->onInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$1;->this$1:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$1;->this$1:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;

    iget-object v0, v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->onInitSuccess()V

    return-void
.end method
