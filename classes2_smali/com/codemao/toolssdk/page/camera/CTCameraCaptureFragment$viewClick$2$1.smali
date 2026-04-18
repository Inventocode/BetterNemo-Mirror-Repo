.class final Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTCameraCaptureFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment;->viewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;->INSTANCE:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 99
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureFragment$viewClick$2$1;->invoke(ZILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZILjava/lang/String;)V
    .registers 4

    return-void
.end method
