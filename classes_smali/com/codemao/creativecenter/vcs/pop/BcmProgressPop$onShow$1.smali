.class final Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$onShow$1;
.super Ljava/lang/Object;
.source "BcmProgressPop.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$onShow$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$onShow$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->access$getImageView$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Lcom/codemao/creativecenter/customview/FrameImageView;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$array;->creative_loading_anim:I

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/FrameImageView;->setData(I)V

    return-void
.end method
