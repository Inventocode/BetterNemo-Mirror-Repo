.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$3;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->initVideoView(Landroid/widget/FrameLayout;I)V
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

    .line 288
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(I)V
    .registers 2

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onProgress(I)V
    .registers 3

    const/16 v0, 0x4b

    if-lt p1, v0, :cond_9

    .line 303
    :try_start_4
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$700(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method
