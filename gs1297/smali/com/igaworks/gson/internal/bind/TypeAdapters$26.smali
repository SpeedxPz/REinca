.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/igaworks/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
    .locals 3
    .param p1, "gson"    # Lcom/igaworks/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/Gson;",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p2, "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/igaworks/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    if-eq v1, v2, :cond_0

    .line 575
    const/4 v1, 0x0

    .line 579
    :goto_0
    return-object v1

    .line 578
    :cond_0
    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/igaworks/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .line 579
    .local v0, "dateTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;

    invoke-direct {v1, p0, v0}, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;-><init>(Lcom/igaworks/gson/internal/bind/TypeAdapters$26;Lcom/igaworks/gson/TypeAdapter;)V

    goto :goto_0
.end method
