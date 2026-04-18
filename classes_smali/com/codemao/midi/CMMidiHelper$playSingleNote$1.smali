.class final Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;
.super Ljava/lang/Object;
.source "CMMidiHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/CMMidiHelper;->playSingleNote(IIIZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $channel:I

.field final synthetic $duration:J

.field final synthetic $scale:I

.field final synthetic this$0:Lcom/codemao/midi/CMMidiHelper;


# direct methods
.method constructor <init>(Lcom/codemao/midi/CMMidiHelper;JII)V
    .registers 6

    iput-object p1, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->this$0:Lcom/codemao/midi/CMMidiHelper;

    iput-wide p2, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->$duration:J

    iput p4, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->$channel:I

    iput p5, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->$scale:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 270
    iget-wide v0, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->$duration:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 271
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    .line 272
    iget v1, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->$channel:I

    iget v2, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->$scale:I

    const/16 v3, 0x80

    const/16 v4, 0x7f

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 273
    iget-object v1, p0, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;->this$0:Lcom/codemao/midi/CMMidiHelper;

    invoke-static {v1}, Lcom/codemao/midi/CMMidiHelper;->access$getRecv$p(Lcom/codemao/midi/CMMidiHelper;)Lcom/codemao/midi/javax/Receiver;

    move-result-object v1

    if-nez v1, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    return-void
.end method
