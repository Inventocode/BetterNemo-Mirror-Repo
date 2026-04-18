.class public final Landroidx/camera/core/impl/utils/AspectRatioUtil$CompareAspectRatiosByDistanceToTargetRatio;
.super Ljava/lang/Object;
.source "AspectRatioUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/AspectRatioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompareAspectRatiosByDistanceToTargetRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# instance fields
.field private mTargetRatio:Landroid/util/Rational;


# direct methods
.method public constructor <init>(Landroid/util/Rational;)V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroidx/camera/core/impl/utils/AspectRatioUtil$CompareAspectRatiosByDistanceToTargetRatio;->mTargetRatio:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Rational;Landroid/util/Rational;)I
    .registers 4

    .line 119
    invoke-virtual {p1, p2}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_8
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/camera/core/impl/utils/AspectRatioUtil$CompareAspectRatiosByDistanceToTargetRatio;->mTargetRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/util/Rational;->floatValue()F

    move-result p2

    iget-object v0, p0, Landroidx/camera/core/impl/utils/AspectRatioUtil$CompareAspectRatiosByDistanceToTargetRatio;->mTargetRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 126
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 108
    check-cast p1, Landroid/util/Rational;

    check-cast p2, Landroid/util/Rational;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/impl/utils/AspectRatioUtil$CompareAspectRatiosByDistanceToTargetRatio;->compare(Landroid/util/Rational;Landroid/util/Rational;)I

    move-result p1

    return p1
.end method
