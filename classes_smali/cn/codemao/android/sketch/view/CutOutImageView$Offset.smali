.class Lcn/codemao/android/sketch/view/CutOutImageView$Offset;
.super Ljava/lang/Object;
.source "CutOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/view/CutOutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Offset"
.end annotation


# instance fields
.field dx:F

.field dy:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 258
    iput p2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 268
    const-class v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_c

    goto :goto_23

    .line 269
    :cond_c
    check-cast p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 270
    iget v1, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_23

    iget p1, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_23

    const/4 v0, 0x1

    :cond_23
    :goto_23
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 275
    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public set(FF)V
    .registers 3

    .line 262
    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 263
    iput p2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    return-void
.end method
