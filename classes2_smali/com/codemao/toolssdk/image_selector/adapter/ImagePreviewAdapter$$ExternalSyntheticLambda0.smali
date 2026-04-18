.class public final synthetic Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    iput p2, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->$r8$lambda$d1JIyJj-63ZV9iHwGBumRyXZEII(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;Landroid/view/View;)V

    return-void
.end method
