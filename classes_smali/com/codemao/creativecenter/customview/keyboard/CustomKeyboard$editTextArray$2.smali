.class final Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomKeyboard.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/util/ArrayMap<",
        "Ljava/lang/Integer;",
        "Landroid/widget/EditText;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;

    invoke-direct {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;->INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;->invoke()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method
