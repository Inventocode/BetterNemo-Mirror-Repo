.class public Lcom/codemao/midi/javax/MidiDevice$Info;
.super Ljava/lang/Object;
.source "MidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/MidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final vendor:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->name:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->vendor:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->description:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 186
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 189
    :cond_13
    check-cast p1, Lcom/codemao/midi/javax/MidiDevice$Info;

    .line 190
    iget-object v2, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/midi/javax/MidiDevice$Info;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 193
    :cond_20
    iget-object v2, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/midi/javax/MidiDevice$Info;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 196
    :cond_2b
    iget-object v2, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->vendor:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/midi/javax/MidiDevice$Info;->vendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    return v1

    .line 199
    :cond_36
    iget-object v2, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/midi/javax/MidiDevice$Info;->version:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    return v1

    :cond_41
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-object v2, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-object v2, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->vendor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget-object v1, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/codemao/midi/javax/MidiDevice$Info;->name:Ljava/lang/String;

    return-object v0
.end method
