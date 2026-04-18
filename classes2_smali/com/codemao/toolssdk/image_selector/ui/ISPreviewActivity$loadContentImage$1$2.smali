.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;
.super Ljava/lang/Object;
.source "ISPreviewActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->loadContentImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $content:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;->$content:Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerateBitmap()V
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;->$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 550
    new-instance v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$loadContentImage$1$2$onGenerateBitmap$1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
