.class public final Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;
.super Ljava/lang/Object;
.source "VCSProgressPopManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVCSProgressPopManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VCSProgressPopManager.kt\ncom/codemao/creativecenter/vcs/utils/VCSProgressPopManager\n*L\n1#1,35:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;

    invoke-direct {v0}, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;
    .registers 7

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remindStr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btnStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p4}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;-><init>(Landroid/content/Context;ZLcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;)V

    .line 24
    invoke-virtual {v0, p2, p3}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object p1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 28
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object v0
.end method
