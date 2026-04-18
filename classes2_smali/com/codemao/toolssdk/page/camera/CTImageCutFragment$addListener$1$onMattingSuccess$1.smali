.class final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;->onMattingSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $resultUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

.field final synthetic this$1:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    iput-object p2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->$resultUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->this$1:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 217
    invoke-virtual {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->$resultUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setCutUrl$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->$resultUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setFinalUrl$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->$resultUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;

    iget-object v2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->this$1:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;

    iget-object v3, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1$onMattingSuccess$1$1;-><init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$addListener$1;Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
