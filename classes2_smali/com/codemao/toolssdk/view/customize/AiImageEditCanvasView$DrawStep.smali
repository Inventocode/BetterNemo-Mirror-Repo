.class public final Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;
.super Ljava/lang/Object;
.source "AiImageEditCanvasView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawStep"
.end annotation


# instance fields
.field private penColor:I

.field private final pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    sget-object v0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->PEN:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->type:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->pointList:Ljava/util/List;

    const/4 v0, -0x1

    .line 245
    iput v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->penColor:I

    return-void
.end method


# virtual methods
.method public final getPenColor()I
    .registers 2

    .line 245
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->penColor:I

    return v0
.end method

.method public final getPointList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->pointList:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->type:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    return-object v0
.end method

.method public final setPenColor(I)V
    .registers 2

    .line 245
    iput p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->penColor:I

    return-void
.end method

.method public final setType(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->type:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    return-void
.end method
