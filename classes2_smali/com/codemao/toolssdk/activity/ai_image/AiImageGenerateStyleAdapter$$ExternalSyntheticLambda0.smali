.class public final synthetic Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

.field public final synthetic f$1:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    iput p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    iget v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->$r8$lambda$gYDI8-fyCygC_5jjJYuWaBh3Lf0(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;ILandroid/view/View;)V

    return-void
.end method
