.class Lcom/tencent/captchasdk/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/captchasdk/d;->a()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/captchasdk/d;


# direct methods
.method constructor <init>(Lcom/tencent/captchasdk/d;I)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/captchasdk/d$1;->b:Lcom/tencent/captchasdk/d;

    iput p2, p0, Lcom/tencent/captchasdk/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/captchasdk/d$1;->b:Lcom/tencent/captchasdk/d;

    invoke-static {v0}, Lcom/tencent/captchasdk/d;->a(Lcom/tencent/captchasdk/d;)[I

    move-result-object v0

    iget v1, p0, Lcom/tencent/captchasdk/d$1;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/tencent/captchasdk/d$1;->b:Lcom/tencent/captchasdk/d;

    invoke-static {p1}, Lcom/tencent/captchasdk/d;->b(Lcom/tencent/captchasdk/d;)V

    return-void
.end method
