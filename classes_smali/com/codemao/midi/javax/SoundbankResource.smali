.class public abstract Lcom/codemao/midi/javax/SoundbankResource;
.super Ljava/lang/Object;
.source "SoundbankResource.java"


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final soundbank:Lcom/codemao/midi/javax/Soundbank;


# direct methods
.method protected constructor <init>(Lcom/codemao/midi/javax/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/javax/Soundbank;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/codemao/midi/javax/SoundbankResource;->soundbank:Lcom/codemao/midi/javax/Soundbank;

    .line 25
    iput-object p2, p0, Lcom/codemao/midi/javax/SoundbankResource;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/codemao/midi/javax/SoundbankResource;->dataClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract getData()Ljava/lang/Object;
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/codemao/midi/javax/SoundbankResource;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/midi/javax/SoundbankResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundbank()Lcom/codemao/midi/javax/Soundbank;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/codemao/midi/javax/SoundbankResource;->soundbank:Lcom/codemao/midi/javax/Soundbank;

    return-object v0
.end method
