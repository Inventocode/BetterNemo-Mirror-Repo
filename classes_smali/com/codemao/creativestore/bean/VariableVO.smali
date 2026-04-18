.class public Lcom/codemao/creativestore/bean/VariableVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "VariableVO.java"


# static fields
.field public static final TYPE_ANY:Ljava/lang/String; = "any"

.field public static final TYPE_CLOUD:Ljava/lang/String; = "cloud"

.field public static final TYPE_LIST:Ljava/lang/String; = "list"

.field public static final TYPE_PRIVATE:Ljava/lang/String; = "private"

.field public static final TYPE_PUBLIC:Ljava/lang/String; = "public"


# instance fields
.field private create_time:J

.field private current_entity:Ljava/lang/String;

.field private entity_name:Ljava/lang/String;

.field private flyout_width:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_global:Z

.field private name:Ljava/lang/String;

.field private offset:Lcom/codemao/creativestore/bean/Offset;

.field private position:Lcom/codemao/creativestore/bean/Offset;

.field private scale:F

.field private theme:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/Object;

.field private valueForDebug:Ljava/lang/Object;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 36
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->id:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/codemao/creativestore/bean/VariableVO;->type:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lcom/codemao/creativestore/bean/VariableVO;->is_global:Z

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->visible:Z

    .line 42
    iput-object p2, p0, Lcom/codemao/creativestore/bean/VariableVO;->name:Ljava/lang/String;

    const/high16 p2, 0x3f800000  # 1.0f

    .line 43
    iput p2, p0, Lcom/codemao/creativestore/bean/VariableVO;->scale:F

    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_7c

    goto :goto_3f

    :sswitch_1f
    const-string p2, "cloud"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    goto :goto_3f

    :cond_28
    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string p2, "list"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    goto :goto_3f

    :cond_33
    const/4 v1, 0x1

    goto :goto_3f

    :sswitch_35
    const-string p2, "any"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    packed-switch v1, :pswitch_data_8a

    goto :goto_5d

    :pswitch_43  #0x2
    if-eqz p4, :cond_48

    const-string p2, "public"

    goto :goto_4a

    :cond_48
    const-string p2, "private"

    .line 46
    :goto_4a
    iput-object p2, p0, Lcom/codemao/creativestore/bean/VariableVO;->type:Ljava/lang/String;

    .line 47
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->is_global:Z

    goto :goto_57

    .line 52
    :pswitch_4f  #0x1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->value:Ljava/lang/Object;

    goto :goto_5d

    .line 49
    :goto_57
    :pswitch_57  #0x0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->value:Ljava/lang/Object;

    :goto_5d
    const-string p1, "common"

    .line 55
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->theme:Ljava/lang/String;

    .line 56
    new-instance p1, Lcom/codemao/creativestore/bean/Offset;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/codemao/creativestore/bean/Offset;-><init>(FF)V

    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->offset:Lcom/codemao/creativestore/bean/Offset;

    .line 57
    iget-boolean p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->is_global:Z

    if-nez p1, :cond_71

    .line 58
    iput-object p5, p0, Lcom/codemao/creativestore/bean/VariableVO;->current_entity:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/codemao/creativestore/bean/VariableVO;->entity_name:Ljava/lang/String;

    .line 61
    :cond_71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->create_time:J

    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        0x179ec -> :sswitch_35
        0x32b09e -> :sswitch_2a
        0x5a5de35 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_57  #00000000
        :pswitch_4f  #00000001
        :pswitch_43  #00000002
    .end packed-switch
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;)Lcom/codemao/creativestore/bean/VariableVO;
    .registers 6

    .line 185
    new-instance v0, Lcom/codemao/creativestore/bean/VariableVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/VariableVO;-><init>()V

    .line 186
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/VariableVO;->setCurrent_entity(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/VariableVO;->setEntity_name(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/codemao/creativestore/bean/VariableVO;->flyout_width:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/VariableVO;->setFlyout_width(Ljava/lang/String;)V

    .line 189
    iget-boolean p2, p0, Lcom/codemao/creativestore/bean/VariableVO;->is_global:Z

    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/VariableVO;->setIs_global(Z)V

    .line 190
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/VariableVO;->setId(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->offset:Lcom/codemao/creativestore/bean/Offset;

    const/4 p2, 0x0

    if-eqz p1, :cond_38

    .line 192
    new-instance v1, Lcom/codemao/creativestore/bean/Offset;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/Offset;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/codemao/creativestore/bean/VariableVO;->offset:Lcom/codemao/creativestore/bean/Offset;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/Offset;->getY()F

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/codemao/creativestore/bean/Offset;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/VariableVO;->setOffset(Lcom/codemao/creativestore/bean/Offset;)V

    goto :goto_40

    .line 194
    :cond_38
    new-instance p1, Lcom/codemao/creativestore/bean/Offset;

    invoke-direct {p1, p2, p2}, Lcom/codemao/creativestore/bean/Offset;-><init>(FF)V

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/VariableVO;->setOffset(Lcom/codemao/creativestore/bean/Offset;)V

    .line 196
    :goto_40
    iget-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->position:Lcom/codemao/creativestore/bean/Offset;

    if-eqz p1, :cond_57

    .line 197
    new-instance p2, Lcom/codemao/creativestore/bean/Offset;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/Offset;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/codemao/creativestore/bean/VariableVO;->position:Lcom/codemao/creativestore/bean/Offset;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/Offset;->getY()F

    move-result v1

    invoke-direct {p2, p1, v1}, Lcom/codemao/creativestore/bean/Offset;-><init>(FF)V

    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/VariableVO;->setOffset(Lcom/codemao/creativestore/bean/Offset;)V

    goto :goto_5f

    .line 199
    :cond_57
    new-instance p1, Lcom/codemao/creativestore/bean/Offset;

    invoke-direct {p1, p2, p2}, Lcom/codemao/creativestore/bean/Offset;-><init>(FF)V

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/VariableVO;->setOffset(Lcom/codemao/creativestore/bean/Offset;)V

    .line 201
    :goto_5f
    iget p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->scale:F

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/VariableVO;->setScale(F)V

    .line 202
    iget-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->theme:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/VariableVO;->setTheme(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/VariableVO;->setValue(Ljava/lang/Object;)V

    .line 204
    iget-boolean p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->visible:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/VariableVO;->setVisible(Z)V

    .line 205
    iget-wide p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->create_time:J

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativestore/bean/VariableVO;->setCreate_time(J)V

    return-object v0
.end method

.method public getCreate_time()J
    .registers 3

    .line 177
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->create_time:J

    return-wide v0
.end method

.method public getCurrent_entity()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->current_entity:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity_name()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->entity_name:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyout_width()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->flyout_width:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lcom/codemao/creativestore/bean/Offset;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->offset:Lcom/codemao/creativestore/bean/Offset;

    return-object v0
.end method

.method public getPosition()Lcom/codemao/creativestore/bean/Offset;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->position:Lcom/codemao/creativestore/bean/Offset;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 121
    iget v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->scale:F

    return v0
.end method

.method public getTheme()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueForDebug()Ljava/lang/Object;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->valueForDebug:Ljava/lang/Object;

    return-object v0
.end method

.method public isIs_global()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->is_global:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/VariableVO;->visible:Z

    return v0
.end method

.method public setCreate_time(J)V
    .registers 3

    .line 181
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->create_time:J

    return-void
.end method

.method public setCurrent_entity(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->current_entity:Ljava/lang/String;

    return-void
.end method

.method public setEntity_name(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->entity_name:Ljava/lang/String;

    return-void
.end method

.method public setFlyout_width(Ljava/lang/String;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->flyout_width:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_global(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->is_global:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setOffset(Lcom/codemao/creativestore/bean/Offset;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->offset:Lcom/codemao/creativestore/bean/Offset;

    return-void
.end method

.method public setPosition(Lcom/codemao/creativestore/bean/Offset;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->position:Lcom/codemao/creativestore/bean/Offset;

    return-void
.end method

.method public setScale(F)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->scale:F

    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->theme:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->value:Ljava/lang/Object;

    return-void
.end method

.method public setValueForDebug(Ljava/lang/Object;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->valueForDebug:Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 133
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/VariableVO;->visible:Z

    return-void
.end method
