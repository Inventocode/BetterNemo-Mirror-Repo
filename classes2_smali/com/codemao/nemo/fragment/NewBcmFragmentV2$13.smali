.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showNewBeeRunGuide(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 887
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击运行"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$100(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 888
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->hideUploadButtonAlways()V

    .line 889
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    .line 890
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$1202(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Z)Z

    return-void
.end method
