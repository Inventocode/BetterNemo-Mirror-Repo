.class public interface abstract annotation Lcom/codemao/creativestore/bean/MaterialActorBean$MaterialActorItemType;
.super Ljava/lang/Object;
.source "MaterialActorBean.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/bean/MaterialActorBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MaterialActorItemType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final TYPE_COLLECT_DOWNLOADING_ITEM:I = 0x3

.field public static final TYPE_COLLECT_WAIT_TO_DOWNLOAD_ITEM:I = 0x2

.field public static final TYPE_NORMAL_COLLECTION_ITEM:I = 0x1

.field public static final TYPE_NORMAL_ITEM:I
