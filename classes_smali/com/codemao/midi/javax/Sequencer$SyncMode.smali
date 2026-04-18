.class public Lcom/codemao/midi/javax/Sequencer$SyncMode;
.super Ljava/lang/Object;
.source "Sequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/Sequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncMode"
.end annotation


# static fields
.field public static final INTERNAL_CLOCK:Lcom/codemao/midi/javax/Sequencer$SyncMode;

.field public static final NO_SYNC:Lcom/codemao/midi/javax/Sequencer$SyncMode;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/codemao/midi/javax/Sequencer$SyncMode;

    const-string v1, "Internal Clock"

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/Sequencer$SyncMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->INTERNAL_CLOCK:Lcom/codemao/midi/javax/Sequencer$SyncMode;

    .line 31
    new-instance v0, Lcom/codemao/midi/javax/Sequencer$SyncMode;

    const-string v1, "No Sync"

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/Sequencer$SyncMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->NO_SYNC:Lcom/codemao/midi/javax/Sequencer$SyncMode;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 47
    :cond_8
    const-class v2, Lcom/codemao/midi/javax/Sequencer$SyncMode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    .line 50
    :cond_11
    check-cast p1, Lcom/codemao/midi/javax/Sequencer$SyncMode;

    .line 51
    iget-object v2, p0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/midi/javax/Sequencer$SyncMode;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->name:Ljava/lang/String;

    return-object v0
.end method
