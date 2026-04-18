.class public Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;
.super Ljava/lang/Object;
.source "Abilities.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private is_collected:Z

.field private is_owned:Z

.field private is_praised:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIs_collected()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->is_collected:Z

    return v0
.end method

.method public isIs_owned()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->is_owned:Z

    return v0
.end method

.method public isIs_praised()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->is_praised:Z

    return v0
.end method

.method public setIs_collected(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->is_collected:Z

    return-void
.end method

.method public setIs_owned(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->is_owned:Z

    return-void
.end method

.method public setIs_praised(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->is_praised:Z

    return-void
.end method
