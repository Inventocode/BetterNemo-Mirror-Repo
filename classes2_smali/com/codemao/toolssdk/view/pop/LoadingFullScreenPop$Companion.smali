.class public final Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;
.super Ljava/lang/Object;
.source "LoadingFullScreenPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateXPop(Landroid/content/Context;Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->setListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V

    .line 28
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 29
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    return-object p1
.end method
