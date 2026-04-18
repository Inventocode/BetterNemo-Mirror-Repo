.class public interface abstract Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Logger;->DEFAULT:Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
