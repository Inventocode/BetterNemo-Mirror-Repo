.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/SaveBcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->onUploadButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;I)V
    .registers 3

    .line 740
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iput p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 2

    .line 749
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4

    .line 743
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    .line 744
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iget v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;->val$from:I

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->publishWork(Ljava/lang/String;I)V

    return-void
.end method
