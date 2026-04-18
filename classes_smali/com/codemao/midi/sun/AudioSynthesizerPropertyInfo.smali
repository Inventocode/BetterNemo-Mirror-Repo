.class public Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;
.super Ljava/lang/Object;
.source "AudioSynthesizerPropertyInfo.java"


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/Object;

.field public valueClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    .line 44
    iput-object p1, p0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->name:Ljava/lang/String;

    .line 45
    instance-of p1, p2, Ljava/lang/Class;

    if-eqz p1, :cond_13

    .line 46
    check-cast p2, Ljava/lang/Class;

    iput-object p2, p0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    goto :goto_1d

    .line 49
    :cond_13
    iput-object p2, p0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    if-eqz p2, :cond_1d

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    :cond_1d
    :goto_1d
    return-void
.end method
