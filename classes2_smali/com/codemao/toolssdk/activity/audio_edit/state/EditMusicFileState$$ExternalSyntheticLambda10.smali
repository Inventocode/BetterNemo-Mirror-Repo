.class public final synthetic Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda10;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda10;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda10;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$$ExternalSyntheticLambda10;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->$r8$lambda$eL8yoqNcgSwHNlbqdrS135Zxkvo(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
