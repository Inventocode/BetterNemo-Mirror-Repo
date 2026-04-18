.class public Lcom/codemao/midi/bean/MidiAccompanyInfo;
.super Ljava/lang/Object;
.source "MidiAccompanyInfo.java"


# instance fields
.field private animationName:Ljava/lang/String;

.field private nameResourceId:I

.field private previewResId:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Lcom/codemao/midi/bean/MidiAccompanyInfo;->nameResourceId:I

    .line 14
    iput-object p4, p0, Lcom/codemao/midi/bean/MidiAccompanyInfo;->animationName:Ljava/lang/String;

    .line 15
    iput p1, p0, Lcom/codemao/midi/bean/MidiAccompanyInfo;->previewResId:I

    return-void
.end method


# virtual methods
.method public getAnimationName()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiAccompanyInfo;->animationName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameResourceId()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/codemao/midi/bean/MidiAccompanyInfo;->nameResourceId:I

    return v0
.end method

.method public getPreviewResId()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/codemao/midi/bean/MidiAccompanyInfo;->previewResId:I

    return v0
.end method
