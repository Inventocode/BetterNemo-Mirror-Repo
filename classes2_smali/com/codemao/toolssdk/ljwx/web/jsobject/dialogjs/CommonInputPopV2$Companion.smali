.class public final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;
.super Ljava/lang/Object;
.source "CommonInputPopV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final open(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;ZLcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;->setHasCallOpened(Z)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 70
    invoke-static {}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getLastMills$cp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1d

    goto :goto_2a

    .line 72
    :cond_1d
    invoke-static {}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getLastMills$cp()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_2a

    return-void

    .line 70
    :cond_2a
    :goto_2a
    invoke-static {v1, v2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$setLastMills$cp(J)V

    .line 77
    new-instance v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v1, p4}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;)V

    .line 79
    invoke-static {v1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$setOption$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;)V

    const/4 p4, 0x0

    if-eqz p2, :cond_40

    .line 80
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->getHintText()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_40
    move-object v2, p4

    :goto_41
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setHintText(Ljava/lang/String;)V

    if-eqz p2, :cond_4b

    .line 81
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->getContentText()Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :cond_4b
    move-object v2, p4

    :goto_4c
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setContentText(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setHideConfigUI(Z)V

    if-eqz p2, :cond_59

    .line 83
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->getActorIconUrl()Ljava/lang/String;

    move-result-object p3

    goto :goto_5a

    :cond_59
    move-object p3, p4

    :goto_5a
    invoke-virtual {v1, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setActorIconUrl(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getTypeList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_73

    .line 85
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->getTypeArray()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_73

    .line 86
    invoke-virtual {v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_73
    if-eqz p2, :cond_79

    .line 88
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->getType()Ljava/lang/String;

    move-result-object p4

    :cond_79
    const-string p3, "list"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_84

    sget-object p3, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->ListElements:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    goto :goto_86

    :cond_84
    sget-object p3, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->Variable:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    :goto_86
    invoke-virtual {v1, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setType(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;)V

    if-eqz p2, :cond_90

    .line 89
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->getMaxTextLength()I

    move-result p2

    goto :goto_91

    :cond_90
    const/4 p2, 0x0

    :goto_91
    if-lez p2, :cond_99

    .line 91
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setRequestMaxLength(Z)V

    .line 92
    invoke-virtual {v1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setMaxLength(I)V

    .line 94
    :cond_99
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 95
    sget-object p3, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, p3}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setHasCallOpened(Z)V
    .registers 2

    .line 61
    invoke-static {p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$setHasCallOpened$cp(Z)V

    return-void
.end method
