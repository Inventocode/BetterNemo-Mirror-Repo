.class public final Lcom/codemao/nemo/view/UnLoginXpopup;
.super Ljava/lang/Object;
.source "UnLoginXpopup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/UnLoginXpopup$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/view/UnLoginXpopup$Companion;


# instance fields
.field private contentStr:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private insideDialogInstance:Landroid/app/Dialog;

.field private leftButtonClickListener:Landroid/view/View$OnClickListener;

.field private leftButtonStr:Ljava/lang/String;

.field private rightButtonClickListener:Landroid/view/View$OnClickListener;

.field private rightButtonStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/view/UnLoginXpopup;->Companion:Lcom/codemao/nemo/view/UnLoginXpopup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->context:Landroid/content/Context;

    return-void
.end method

.method public static final showUnLoginDialogForReWorkTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/codemao/nemo/view/UnLoginXpopup;->Companion:Lcom/codemao/nemo/view/UnLoginXpopup$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginDialogForReWorkTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/codemao/nemo/view/UnLoginXpopup;->Companion:Lcom/codemao/nemo/view/UnLoginXpopup$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    return-void
.end method

.method public static final showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/codemao/nemo/view/UnLoginXpopup;->Companion:Lcom/codemao/nemo/view/UnLoginXpopup$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->insideDialogInstance:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public final getContentStr()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->contentStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getLeftButtonClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->leftButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getLeftButtonStr()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->leftButtonStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getRightButtonClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->rightButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getRightButtonStr()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->rightButtonStr:Ljava/lang/String;

    return-object v0
.end method

.method public final setContentStr(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->contentStr:Ljava/lang/String;

    return-void
.end method

.method public final setInsideDialogInstance(Landroid/app/Dialog;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->insideDialogInstance:Landroid/app/Dialog;

    return-void
.end method

.method public final setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->leftButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setLeftButtonStr(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->leftButtonStr:Ljava/lang/String;

    return-void
.end method

.method public final setRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->rightButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setRightButtonStr(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/codemao/nemo/view/UnLoginXpopup;->rightButtonStr:Ljava/lang/String;

    return-void
.end method
