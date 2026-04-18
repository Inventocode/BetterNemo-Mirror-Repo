.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21$1;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;

.field final synthetic val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .registers 3

    .line 910
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21$1;->this$1:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;

    iput-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21$1;->val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 913
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21$1;->val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->setLoopCount(I)V

    .line 914
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21$1;->this$1:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;

    iget-object v0, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21$1;->val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 915
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$21$1;->val$resource:Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startFromFirstFrame()V

    return-void
.end method
