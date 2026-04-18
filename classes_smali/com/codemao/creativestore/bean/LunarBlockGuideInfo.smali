.class public Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "LunarBlockGuideInfo.java"


# instance fields
.field private category:Ljava/lang/String;

.field private input_name:Ljava/lang/String;

.field private is_parent:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 41
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->type:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->category:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->input_name:Ljava/lang/String;

    .line 45
    iput-boolean p4, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->is_parent:Z

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getInput_name()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->input_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_parent()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->is_parent:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setInput_name(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->input_name:Ljava/lang/String;

    return-void
.end method

.method public setIs_parent(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->is_parent:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideInfo;->type:Ljava/lang/String;

    return-void
.end method
