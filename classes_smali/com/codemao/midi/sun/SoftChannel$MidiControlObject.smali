.class Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MidiControlObject"
.end annotation


# instance fields
.field channel_pressure:[D

.field pitch:[D

.field poly_pressure:[D

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftChannel;


# direct methods
.method private constructor <init>(Lcom/codemao/midi/sun/SoftChannel;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;->this$0:Lcom/codemao/midi/sun/SoftChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->access$000(Lcom/codemao/midi/sun/SoftChannel;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;->pitch:[D

    .line 132
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->access$100(Lcom/codemao/midi/sun/SoftChannel;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;->channel_pressure:[D

    const/4 p1, 0x1

    new-array p1, p1, [D

    .line 133
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;->poly_pressure:[D

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/SoftChannel;Lcom/codemao/midi/sun/SoftChannel$1;)V
    .registers 3

    .line 130
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;-><init>(Lcom/codemao/midi/sun/SoftChannel;)V

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const-string v0, "pitch"

    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 139
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;->pitch:[D

    return-object p1

    :cond_f
    const-string v0, "channel_pressure"

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 141
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;->channel_pressure:[D

    return-object p1

    :cond_1a
    const-string v0, "poly_pressure"

    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 143
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;->poly_pressure:[D

    :cond_24
    return-object p1
.end method
