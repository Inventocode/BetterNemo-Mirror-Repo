.class public Lcn/codemao/android/account/bean/Catastrophe;
.super Ljava/lang/Object;
.source "Catastrophe.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private category:Lcn/codemao/android/account/bean/Category;

.field private error:Ljava/lang/Error;

.field private native_error:Lcn/codemao/android/account/bean/NativeError;

.field private separator:Ljava/lang/String;

.field private stack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Lcn/codemao/android/account/bean/Category;
    .registers 2

    .line 42
    iget-object v0, p0, Lcn/codemao/android/account/bean/Catastrophe;->category:Lcn/codemao/android/account/bean/Category;

    return-object v0
.end method

.method public getError()Ljava/lang/Error;
    .registers 2

    .line 26
    iget-object v0, p0, Lcn/codemao/android/account/bean/Catastrophe;->error:Ljava/lang/Error;

    return-object v0
.end method

.method public getNative_error()Lcn/codemao/android/account/bean/NativeError;
    .registers 2

    .line 14
    iget-object v0, p0, Lcn/codemao/android/account/bean/Catastrophe;->native_error:Lcn/codemao/android/account/bean/NativeError;

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcn/codemao/android/account/bean/Catastrophe;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcn/codemao/android/account/bean/Catastrophe;->stack:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Lcn/codemao/android/account/bean/Category;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcn/codemao/android/account/bean/Catastrophe;->category:Lcn/codemao/android/account/bean/Category;

    return-void
.end method

.method public setError(Ljava/lang/Error;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcn/codemao/android/account/bean/Catastrophe;->error:Ljava/lang/Error;

    return-void
.end method

.method public setNative_error(Lcn/codemao/android/account/bean/NativeError;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/account/bean/Catastrophe;->native_error:Lcn/codemao/android/account/bean/NativeError;

    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcn/codemao/android/account/bean/Catastrophe;->separator:Ljava/lang/String;

    return-void
.end method

.method public setStack(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcn/codemao/android/account/bean/Catastrophe;->stack:Ljava/lang/String;

    return-void
.end method
