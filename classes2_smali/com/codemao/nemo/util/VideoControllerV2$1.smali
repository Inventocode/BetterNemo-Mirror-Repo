.class Lcom/codemao/nemo/util/VideoControllerV2$1;
.super Ljava/lang/Object;
.source "VideoControllerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/VideoControllerV2;-><init>(Lcom/codemao/nemo/view/JZVideoContainer2;Lcom/codemao/creativestore/bean/WorksEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/VideoControllerV2;

.field final synthetic val$jzVideoContainer:Lcom/codemao/nemo/view/JZVideoContainer2;

.field final synthetic val$worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/VideoControllerV2;Lcom/codemao/creativestore/bean/WorksEvent;Lcom/codemao/nemo/view/JZVideoContainer2;)V
    .registers 4

    .line 56
    iput-object p1, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->this$0:Lcom/codemao/nemo/util/VideoControllerV2;

    iput-object p2, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iput-object p3, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$jzVideoContainer:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    .line 59
    sput v0, Lcn/jzvd/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    .line 60
    sput v0, Lcn/jzvd/JZVideoPlayer;->NORMAL_ORIENTATION:I

    const/4 v1, 0x1

    .line 61
    sput-boolean v1, Lcn/jzvd/JZVideoPlayer;->SAVE_PROGRESS:Z

    .line 62
    sput-boolean v1, Lcom/codemao/nemo/view/JZVideoContainer;->NEED_WIFI_REMIND:Z

    .line 64
    iget-object v2, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->videoDuration:I

    if-lez v2, :cond_31

    .line 65
    iget-object v2, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->this$0:Lcom/codemao/nemo/util/VideoControllerV2;

    invoke-static {v2}, Lcom/codemao/nemo/util/VideoControllerV2;->access$000(Lcom/codemao/nemo/util/VideoControllerV2;)Lcom/codemao/nemo/view/JZVideoContainer2;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget v4, v3, Lcom/codemao/creativestore/bean/WorksEvent;->progress:I

    mul-int/lit8 v5, v4, 0x64

    iget v3, v3, Lcom/codemao/creativestore/bean/WorksEvent;->videoDuration:I

    div-int/2addr v5, v3

    invoke-virtual {v2, v5, v4, v3}, Lcom/codemao/nemo/view/JZVideoContainer2;->setProgressAndText(III)V

    .line 66
    iget-object v2, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$jzVideoContainer:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v4, v3, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    iget v3, v3, Lcom/codemao/creativestore/bean/WorksEvent;->progress:I

    invoke-static {v2, v4, v3}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 68
    :cond_31
    iget-object v2, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->this$0:Lcom/codemao/nemo/util/VideoControllerV2;

    invoke-static {v2}, Lcom/codemao/nemo/util/VideoControllerV2;->access$000(Lcom/codemao/nemo/util/VideoControllerV2;)Lcom/codemao/nemo/view/JZVideoContainer2;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v4, v3, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/codemao/creativestore/bean/WorksEvent;->keyFrameUrl:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {v2, v4, v0, v1}, Lcom/codemao/nemo/view/JZVideoContainer2;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->val$worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->keyFrameUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/util/VideoControllerV2$1;->this$0:Lcom/codemao/nemo/util/VideoControllerV2;

    invoke-static {v2}, Lcom/codemao/nemo/util/VideoControllerV2;->access$000(Lcom/codemao/nemo/util/VideoControllerV2;)Lcom/codemao/nemo/view/JZVideoContainer2;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/nemo/view/JZVideoContainer2;->preview:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method
