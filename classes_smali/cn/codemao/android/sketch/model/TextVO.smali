.class public Lcn/codemao/android/sketch/model/TextVO;
.super Ljava/lang/Object;
.source "TextVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private colorPosition:I

.field private isHasBackground:Z

.field private isUpdate:Z

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeBackgroundStatus()V
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground:Z

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground:Z

    :goto_b
    return-void
.end method

.method public getColorPosition()I
    .registers 2

    .line 25
    iget v0, p0, Lcn/codemao/android/sketch/model/TextVO;->colorPosition:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcn/codemao/android/sketch/model/TextVO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isHasBackground()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground:Z

    return v0
.end method

.method public isUpdate()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/TextVO;->isUpdate:Z

    return v0
.end method

.method public setColorPosition(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcn/codemao/android/sketch/model/TextVO;->colorPosition:I

    return-void
.end method

.method public setHasBackground(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcn/codemao/android/sketch/model/TextVO;->text:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/TextVO;->isUpdate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextVO{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/sketch/model/TextVO;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", colorPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/sketch/model/TextVO;->colorPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/TextVO;->isUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHasBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
