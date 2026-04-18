.class public Lcn/codemao/android/account/bean/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private unique_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/codemao/android/account/bean/Category;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getUnique_code()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/account/bean/Category;->unique_code:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/codemao/android/account/bean/Category;->description:Ljava/lang/String;

    return-void
.end method

.method public setUnique_code(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/bean/Category;->unique_code:Ljava/lang/String;

    return-void
.end method
