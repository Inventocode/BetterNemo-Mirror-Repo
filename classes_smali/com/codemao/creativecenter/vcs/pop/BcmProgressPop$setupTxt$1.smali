.class final Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;
.super Ljava/lang/Object;
.source "BcmProgressPop.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $btnStr:Ljava/lang/String;

.field final synthetic $infoStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->$infoStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->$btnStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->access$getTvInfo$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->$infoStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->access$getTvBtn$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->$btnStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->access$getPb$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
