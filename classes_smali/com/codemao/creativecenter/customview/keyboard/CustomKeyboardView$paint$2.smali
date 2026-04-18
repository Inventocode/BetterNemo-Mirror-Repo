.class final Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomKeyboardView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;

    invoke-direct {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;->INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .registers 2

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;->invoke()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
