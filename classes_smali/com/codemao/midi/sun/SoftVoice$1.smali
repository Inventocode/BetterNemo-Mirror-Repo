.class Lcom/codemao/midi/sun/SoftVoice$1;
.super Ljava/lang/Object;
.source "SoftVoice.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field keynumber:[D

.field on:[D

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftVoice;

.field velocity:[D


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftVoice;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$1;->this$0:Lcom/codemao/midi/sun/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iget-object v0, p1, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$1;->keynumber:[D

    .line 108
    iget-object v0, p1, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_velocity:[D

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$1;->velocity:[D

    .line 109
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_on:[D

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$1;->on:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const-string v0, "keynumber"

    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$1;->keynumber:[D

    return-object p1

    :cond_f
    const-string v0, "velocity"

    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 116
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$1;->velocity:[D

    return-object p1

    :cond_1a
    const-string v0, "on"

    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 118
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$1;->on:[D

    :cond_24
    return-object p1
.end method
