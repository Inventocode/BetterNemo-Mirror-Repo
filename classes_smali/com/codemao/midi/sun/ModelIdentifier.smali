.class public Lcom/codemao/midi/sun/ModelIdentifier;
.super Ljava/lang/Object;
.source "ModelIdentifier.java"


# instance fields
.field private instance:I

.field private object:Ljava/lang/String;

.field private variable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    .line 96
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    .line 101
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    .line 107
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    .line 109
    iput p3, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 145
    instance-of v0, p1, Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 148
    :cond_6
    check-cast p1, Lcom/codemao/midi/sun/ModelIdentifier;

    .line 149
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v3, p1, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    if-eq v0, v3, :cond_1a

    return v1

    .line 151
    :cond_1a
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v3, p1, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    if-nez v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    if-eq v0, v3, :cond_2b

    return v1

    .line 153
    :cond_2b
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getInstance()I

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelIdentifier;->getInstance()I

    move-result v3

    if-eq v0, v3, :cond_36

    return v1

    .line 155
    :cond_36
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v3, p1, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    return v1

    .line 157
    :cond_43
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object p1, p1, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    return v1

    :cond_50
    return v2
.end method

.method public getInstance()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    return v0
.end method

.method public getObject()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    return-object v0
.end method

.method public getVariable()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 138
    iget v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    .line 139
    iget-object v1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 140
    :cond_b
    iget-object v1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    const-string v1, "["

    if-nez v0, :cond_22

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/midi/sun/ModelIdentifier;->object:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->instance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelIdentifier;->variable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
