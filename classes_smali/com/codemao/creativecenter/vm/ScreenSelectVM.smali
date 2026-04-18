.class public final Lcom/codemao/creativecenter/vm/ScreenSelectVM;
.super Ljava/lang/Object;
.source "ScreenSelectVM.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;
    }
.end annotation


# instance fields
.field private final callBack:Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;

.field private isPad:Z

.field private final observerAction:Lcom/codemao/creativecenter/callback/ObserverAction;


# direct methods
.method public constructor <init>(ZLcom/codemao/creativecenter/callback/ObserverAction;Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;)V
    .registers 5

    const-string v0, "callBack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->isPad:Z

    .line 17
    iput-object p2, p0, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->observerAction:Lcom/codemao/creativecenter/callback/ObserverAction;

    .line 18
    iput-object p3, p0, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->callBack:Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;

    return-void
.end method


# virtual methods
.method public final getCallBack()Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->callBack:Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;

    return-object v0
.end method

.method public final getObserverAction()Lcom/codemao/creativecenter/callback/ObserverAction;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->observerAction:Lcom/codemao/creativecenter/callback/ObserverAction;

    return-object v0
.end method

.method public final isPad()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vm/ScreenSelectVM;->isPad:Z

    return v0
.end method
