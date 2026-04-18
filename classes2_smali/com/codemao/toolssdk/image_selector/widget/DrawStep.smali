.class public final Lcom/codemao/toolssdk/image_selector/widget/DrawStep;
.super Ljava/lang/Object;
.source "ManualCutOutView.kt"


# instance fields
.field private final pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private scale:F

.field private strokeWidth:F

.field private type:Lcom/codemao/toolssdk/image_selector/widget/DrawType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->type:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->pointList:Ljava/util/List;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 455
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->scale:F

    return-void
.end method


# virtual methods
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

    .line 454
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->pointList:Ljava/util/List;

    return-object v0
.end method

.method public final getScale()F
    .registers 2

    .line 455
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->scale:F

    return v0
.end method

.method public final getStrokeWidth()F
    .registers 2

    .line 453
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->strokeWidth:F

    return v0
.end method

.method public final getType()Lcom/codemao/toolssdk/image_selector/widget/DrawType;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->type:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    return-object v0
.end method

.method public final setScale(F)V
    .registers 2

    .line 455
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->scale:F

    return-void
.end method

.method public final setStrokeWidth(F)V
    .registers 2

    .line 453
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->strokeWidth:F

    return-void
.end method

.method public final setType(Lcom/codemao/toolssdk/image_selector/widget/DrawType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->type:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    return-void
.end method
